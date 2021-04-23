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

enum TagClass {
  universal,
  application,
  contextSpecific,
  private,
}

enum TagNumber {
  EOC,
  BOOLEAN,
  INTEGER,
  BIT_STRING,
  OCTET_STRING,
  NULL,
  OBJECT_IDENTIFIER,
  ObjectDescriptor,
  EXTERNAL,
  REAL,
  ENUMERATED,
  EMBEDDED_PDV,
  UTF8String,
  RELATIVE_OID,
  SEQUENCE,
  SET,
  NumericString,
  PrintableString, // ASCII subset
  TeletexString, // T61String
  VideotexString,
  IA5String, // ASCII
  UTCTime,
  GeneralizedTime,
  GraphicString,
  VisibleString,
  GeneralString,
  UniversalString,
  CHARACTER_STRING,
  BMPString,
}

extension EnumName on TagNumber {
  String get description => toString().split('.').last;
}

class ASN1Tag {
  static const _class = <int, TagClass>{
    0: TagClass.universal,
    1: TagClass.application,
    2: TagClass.contextSpecific,
    3: TagClass.private,
  };

  static const _number = <int, TagNumber>{
    0x00: TagNumber.EOC,
    0x01: TagNumber.BOOLEAN,
    0x02: TagNumber.INTEGER,
    0x03: TagNumber.BIT_STRING,
    0x04: TagNumber.OCTET_STRING,
    0x05: TagNumber.NULL,
    0x06: TagNumber.OBJECT_IDENTIFIER,
    0x07: TagNumber.ObjectDescriptor,
    0x08: TagNumber.EXTERNAL,
    0x09: TagNumber.REAL,
    0x0A: TagNumber.ENUMERATED,
    0x0B: TagNumber.EMBEDDED_PDV,
    0x0C: TagNumber.UTF8String,
    0x0D: TagNumber.RELATIVE_OID,
    0x10: TagNumber.SEQUENCE,
    0x11: TagNumber.SET,
    0x12: TagNumber.NumericString,
    0x13: TagNumber.PrintableString,
    0x14: TagNumber.TeletexString,
    0x15: TagNumber.VideotexString,
    0x16: TagNumber.IA5String,
    0x17: TagNumber.UTCTime,
    0x18: TagNumber.GeneralizedTime,
    0x19: TagNumber.GraphicString,
    0x1A: TagNumber.VisibleString,
    0x1B: TagNumber.GeneralString,
    0x1C: TagNumber.UniversalString,
    0x1D: TagNumber.CHARACTER_STRING,
    0x1E: TagNumber.BMPString,
  };

  // static final _classByName = _class.map((k, v) => MapEntry(v, k));
  // static final _numberByName = _number.map((k, v) => MapEntry(v, k));

  final TagClass? tagClass;
  final TagNumber? tagNumber;

  /// Original tag number, required for context specific tags
  final int rawTagNumber;

  final bool isConstructed;

  late final int length;

  bool get isUniversal => tagClass == TagClass.universal;

  bool get isEOC =>
      tagClass == TagClass.universal && tagNumber == TagNumber.EOC;

  ASN1Tag(int classId, int number, this.isConstructed)
      : tagClass = _class[classId],
        tagNumber = _number[number],
        rawTagNumber = number;

  String get typeName {
    final number = rawTagNumber;
    switch (tagClass) {
      case TagClass.universal:
        return 'Universal_$number';
      case TagClass.application:
        return 'Application_$number';
      case TagClass.contextSpecific:
        return '[$number]';
      case TagClass.private:
        return 'Private_$number';
      default:
    }
    return 'UnknownType';
  }

  String get description => _number[rawTagNumber]?.description ?? 'UNKNOWN';
}
