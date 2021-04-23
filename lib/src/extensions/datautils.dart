// ASN.1 Dart decoder Copyright (c) 2021-2022 A. Zulli
//
// Permission to use, copy, modify, and/or distribute this software for any
// purpose with or without fee is hereby granted, provided that the above
// copyright notice and this permission notice appear in all copies.
//
// THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES
// WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF
// MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR
// ANY SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES
// WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN
// ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF
// OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.

import 'dart:convert';
import 'dart:typed_data';
import '../parsed_structs.dart';
import 'stringcutter.dart';

/// Regex time short
const reTimeS =
    r'^(\d\d)(0[1-9]|1[0-2])(0[1-9]|[12]\d|3[01])([01]\d|2[0-3])(?:([0-5]\d)(?:([0-5]\d)(?:[.,](\d{1,3}))?)?)?(Z|[-+](?:[0]\d|1[0-2])([0-5]\d)?)?$';

/// Regex time long
const reTimeL =
    r'^(\d\d\d\d)(0[1-9]|1[0-2])(0[1-9]|[12]\d|3[01])([01]\d|2[0-3])(?:([0-5]\d)(?:([0-5]\d)(?:[.,](\d{1,3}))?)?)?(Z|[-+](?:[0]\d|1[0-2])([0-5]\d)?)?$';

/// Types of raw string parser.
enum StringParserType { bitString, octetString }

extension DataUtils on Uint8List {
  ParsedInteger parseInteger(int start, int end) {
    var v = this[start], neg = (v > 127), pad = neg ? 255 : 0, len = 0;
    while (v == pad && ++start < end) {
      v = this[start];
    }
    len = end - start;
    if (len == 0) {
      return ParsedInteger(neg ? -BigInt.one : BigInt.zero);
    }
    if (len > 4) {
      var tmp = v;
      len <<= 3;
      while (((tmp ^ pad) & 0x80) == 0) {
        tmp <<= 1;
        --len;
      }
    }
    if (neg) v = v - 256;
    var n = BigInt.from(v);
    final mul = BigInt.from(256);
    for (var i = start + 1; i < end; ++i) {
      n = (n * mul) + BigInt.from(this[i]);
    }
    return ParsedInteger(n, len);
  }

  /// Parser for object identifiers
  ///
  /// Derives from asn1lib function with some code borrowed from asn1js.
  ParsedOID parseOID(int start, int end) {
    var n = 0, bits = 0, s = '';
    BigInt? bigValue;
    var chunks = <int>[];
    for (var i = start; i < end; i++) {
      var b = this[i] & 0xFF;
      bits += 7;
      if (n < 0x80000000000000) {
        n = n * 128 + (b & 0x7f);
        if ((b & 0x80) == 0) {
          if (s.isEmpty) {
            var m = n < 80
                ? n < 40
                    ? 0
                    : 1
                : 2;
            s = '$m.${n - m * 40}';
            chunks.add(m);
            chunks.add(n - m * 40);
          } else {
            chunks.add(n);
            s += '.$n';
          }
          n = 0;
          bits = 0;
        }
      } else {
        bigValue ??= BigInt.from(n);
        bigValue = bigValue << (7);
        bigValue = bigValue | BigInt.from(b & 0x7f);
        if ((b & 0x80) == 0) {
          if (s.isEmpty) {
            bigValue -= BigInt.from(80);
            s = '2';
            chunks.add(2);
          }
          s += '.$bigValue';
          chunks.add(bigValue.toInt());
          bigValue = null;
          n = 0;
          bits = 0;
        }
      }
    }
    if (bits > 7) {
      s += '.incomplete';
    }
    return ParsedOID(s, chunks, bits < 7);
  }

  String parseStringUTF(int start, int end) =>
      utf8.decode(sublist(start, end), allowMalformed: false);

  String parseStringISO(int start, int end) =>
      latin1.decode(sublist(start, end), allowInvalid: false);

  String parseStringBMP(int start, int end) {
    var str = '';
    for (var i = start; i < end;) {
      // Tipo che magari va bene l'UTF-16
      str += String.fromCharCode(this[i++] << 8 | this[i++]);
    }
    return str;
  }

  ParsedString parseBitString(int start, int end, [int? maxLength]) {
    var unusedBits = this[start];
    if (unusedBits > 7) {
      throw Exception('Invalid BitString with unusedBits=$unusedBits');
    }
    var lenBit = ((end - start - 1) << 3) - unusedBits, s = '';
    for (var i = start + 1; i < end; ++i) {
      var b = this[i], skip = (i == end - 1) ? unusedBits : 0;
      for (var j = 7; j >= skip; --j) {
        s += ((b >> j) & 1) == 1 ? '1' : '0';
      }
      if (maxLength != null && s.length > maxLength) {
        s = s.cut(maxLength);
      }
    }
    return ParsedString(lenBit, s);
  }

  ParsedString parseOctetString(int start, int end, [int? maxLength]) {
    var len = end - start, s = '';
    try {
      s = parseStringUTF(start, end);
      var v;
      for (var i = 0; i < s.length; i++) {
        v = s.codeUnitAt(i);
        // \t\r\n are kinda printable
        if (v < 32 && v != 9 && v != 10 && v != 13) {
          throw Exception('Unprintable character at index $i (codeUnit: $v)');
        }
      }
      return ParsedString(len, s);
    } catch (e) {
      // retrow?
      s = '';
    }
    // If provided, maxLength is halved because we work in bytes
    maxLength = maxLength != null ? maxLength ~/= 2 : len;
    if (len > maxLength) {
      end = start + maxLength;
    }
    for (var i = start; i < end; i++) {
      s += hexByte(this[i]);
    }
    if (len > maxLength) {
      s += '…';
    }
    return ParsedString(len, s);
  }

  ParsedTime parseTime(int start, int end, [bool shortYear = false]) {
    var s = parseStringISO(start, end),
        m = RegExp(shortYear ? reTimeS : reTimeL).firstMatch(s);
    if (m == null) {
      throw FormatException('Unrecognized time: $s');
    }
    // Can't be final because the year of UTCTime objects has only two digits
    var year = int.parse(m.group(1)!);
    final month = int.parse(m.group(2)!);
    final day = int.parse(m.group(3)!);
    final hours = int.parse(m.group(4)!);
    final minutes = int.parse(m.group(5) ?? '0');
    final seconds = int.parse(m.group(6) ?? '0');
    final fractions = int.parse(m.group(7) ?? '0');
    final tzHours = m.group(8);
    final tzMinutes = m.group(9);
    if (shortYear) {
      // To avoid querying the timer, use the fixed range [1970, 2069]
      // it will conform with ITU X.400 [-10, +40] sliding window until 2030
      year += year < 70 ? 2000 : 1900;
    }
    // Local time
    if (tzHours == null) {
      return ParsedTime(
          DateTime(year, month, day, hours, minutes, seconds, fractions), null);
    }
    // Time in UTC time zone
    if (tzHours == 'Z') {
      return ParsedTime(
          DateTime.utc(year, month, day, hours, minutes, seconds, fractions),
          'Z');
    }
    // Time with UTC offset
    return ParsedTime(
        DateTime(year, month, day, hours, minutes, seconds, fractions),
        '$tzHours:$tzMinutes');
  }

  @deprecated
  String parseTimeStr(int start, int end, [bool shortYear = false]) {
    var s = parseStringISO(start, end),
        m = RegExp(shortYear ? reTimeS : reTimeL).firstMatch(s);
    if (m == null) {
      return 'Unrecognized time: $s';
    }
    var year = int.parse(m.group(1)!);
    var month = m.group(2)!;
    var day = m.group(3)!;
    var hours = m.group(4)!;
    var minutes = m.group(5);
    var seconds = m.group(6);
    var fractions = m.group(7);
    var tzHours = m.group(8);
    var tzMinutes = m.group(9);
    if (shortYear) {
      // to avoid querying the timer, use the fixed range [1970, 2069]
      // it will conform with ITU X.400 [-10, +40] sliding window until 2030
      year += year < 70 ? 2000 : 1900;
    }
    s = '$year-$month-$day $hours';
    if (minutes != null) {
      s += ':$minutes';
      if (seconds != null) {
        s += ':$seconds';
        if (fractions != null) {
          s += '.$fractions';
        }
      }
    }
    if (tzHours != null) {
      s += ' UTC';
      if (tzHours != 'Z') {
        s += tzHours;
        if (tzMinutes != null) {
          s += ':$tzMinutes';
        }
      }
    }
    return s;
  }

  String hexByte(int codeUnit) =>
      codeUnit.toRadixString(16).padLeft(2, '0').toUpperCase();
}
