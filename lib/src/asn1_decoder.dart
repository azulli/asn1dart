import 'dart:convert';
import 'dart:typed_data';

import 'package:asn1dart/asn1dart.dart';
import 'package:asn1dart/src/extensions/datautils.dart';

import 'asn1object.dart';
import 'impl/base_objects.dart';
import 'impl/string_objects.dart';

/// ASN.1 decoder only.
///
/// Original code by Lapo Luchini <lapo@lapo.it> (c) 2008-2020
class ASN1Decoder extends Converter<Uint8List, ASN1Object?> {
  int _pos = 0;

  @override
  ASN1Object? convert(input) {
    if (input.isEmpty) return null;
    return _parseASN1(input);
  }

  /// Parses the ASN.1 [input] element from a list of bytes
  ASN1Object _parseASN1(Uint8List input) {
    // General ASN.1 element attributes
    final asn1DataStart = _pos;
    final tag = _parseASN1Tag(input);
    final tagLen = _pos - asn1DataStart;
    tag.length = tagLen;
    var elementLength = _decodeASN1Length(input);
    final asn1BodyStart = _pos;
    final headerLength = asn1BodyStart - asn1DataStart;

    var computedLength = 0;
    List<ASN1Object>? childs;
    if (tag.isConstructed) {
      childs = <ASN1Object>[];
      computedLength = _decodeChilds(input, childs, elementLength);
    } else if (tag.isUniversal &&
        (tag.tagNumber == TagNumber.BIT_STRING ||
            tag.tagNumber == TagNumber.OCTET_STRING)) {
      try {
        if (tag.tagNumber == TagNumber.BIT_STRING && input[_pos] != 0) {
          throw StateError('BIT STRING with unused bits cannot encapsulate.');
        }
        childs = <ASN1Object>[];
        // Gets the length of the decoded data, when the element length is unlimited
        computedLength = _decodeChilds(input, childs, elementLength);
        // The EOC element signals the end of the element content and must not be returned
        if (childs.any((element) => element.tag?.isEOC ?? false)) {
          throw Exception('EOC is not supposed to be actual content.');
        }
      } catch (e) {
        // This catch ensures that the search for potentially invalid nested
        // elements does not disrupts the stated parent element. This often
        // occurs during the decoding of an OCTET STRING element.
        childs = null;
      }
    }
    if (childs == null || childs.isEmpty) {
      if (elementLength == null) {
        throw StateError(
            'We can\'t skip over an invalid tag with undefined length at offset $asn1DataStart');
      }
      _pos = asn1BodyStart + elementLength.abs();
    }
    // Last position of the ASN.1 element
    final asn1DataEnd = (elementLength == null || elementLength < 0)
        ? input.length
        : asn1DataStart + headerLength + elementLength;
    elementLength ??= computedLength;

    // The ASN.1 element class is instantiated here because the size may not be
    // determined beforehand.
    final asn1 = _create(tag, elementLength, headerLength,
        Uint8List.sublistView(input, asn1DataStart, asn1DataEnd), childs);
    if (asn1 == null) {
      throw Exception('Unparsed element $tag');
    }
    return asn1;
  }

  /// Decodes the child ASN.1 elements, returning the calculated data length.
  ///
  /// [len] is the element length parsed from the ASN.1 header, [childs] will
  /// contains all found ASN.1 elements.
  int _decodeChilds(Uint8List input, List<ASN1Object> childs, int? len) {
    final start = _pos;
    var decodedLength = len ?? 0;
    if (len != null) {
      // Here we process the childs of a known length ASN.1 parent.
      final end = start + len;
      if (end > input.length) {
        throw IndexError(end, input);
      }
      while (_pos < end) {
        var asn1 = _parseASN1(input);
        childs.add(asn1);
      }
      if (_pos != end) {
        throw Exception(
            'Content size is not correct for container at offset $start');
      }
    } else {
      // Here we process the childs of an unlimited length ASN.1 element.
      try {
        while (true) {
          final asn1 = _parseASN1(input);
          // An EOC element signals the end of the parent data
          if (asn1.tag!.isEOC) break;
          childs.add(asn1);
        }
        decodedLength = start - _pos;
      } catch (e) {
        rethrow;
      }
    }
    return decodedLength;
  }

  /// Parses an ASN.1 tag element
  ASN1Tag _parseASN1Tag(Uint8List input) {
    var buf = input[_pos++];
    final tagClass = buf >> 6;
    final tagConstructed = ((buf & 0x20) != 0);
    var tagNumber = buf & 0x1F;
    // Long tag
    if (tagNumber == 0x1F) {
      var tmp = 0;
      do {
        tmp = (tmp * 128) + (input[_pos++] & 0x7F);
      } while (buf & 0x80 != 0);
      tagNumber = tmp;
    }
    return ASN1Tag(tagClass, tagNumber, tagConstructed);
  }

  /// Decodes the ASN.1 element length
  int? _decodeASN1Length(Uint8List input) {
    var buf = input[_pos++];
    var len = buf & 0x7F;
    if (len == buf) return buf;
    if (len == 0) return null;
    if (len > 6) {
      throw StateError(
          'Length over 48 bits not supported at position ${_pos - 1}');
    }
    buf = 0;
    for (var i = 0; i < len; i++) {
      buf = (buf * 256) + input[_pos++];
    }
    return buf;
  }

  /// Private factory of ASN1 object classes.
  ASN1Object? _create(ASN1Tag tag, int? size, int headerLength,
      Uint8List content, List<ASN1Object>? childs) {
    if (tag.isUniversal) {
      switch (tag.tagNumber) {
        case TagNumber.EOC:
          return ASN1EOC(tag);
        case TagNumber.BOOLEAN:
          return ASN1Boolean(content, headerLength, tag, childs);
        case TagNumber.INTEGER:
          return ASN1Integer(content, headerLength, size!, tag, childs);
        case TagNumber.BIT_STRING:
          return ASN1DataString(StringParserType.bitString, content,
              headerLength, size!, tag, childs);
        case TagNumber.OCTET_STRING:
          return ASN1DataString(StringParserType.octetString, content,
              headerLength, size, tag, childs);
        case TagNumber.NULL:
          return ASN1Null(headerLength, tag);
        case TagNumber.OBJECT_IDENTIFIER:
          return ASN1ObjectIdentifier(
              content, headerLength, size!, tag, childs);
        case TagNumber.ENUMERATED:
          return ASN1Enumerated(content, headerLength, size!, tag, childs);
        case TagNumber.UTF8String:
          return ASN1UTF8String(content, headerLength, size, tag, childs);
        case TagNumber.SEQUENCE:
        case TagNumber.SET:
          return ASN1Collection(content, headerLength, size, tag, childs);
        case TagNumber.UTCTime:
        case TagNumber.GeneralizedTime:
          return ASN1Time(content, headerLength, size!, tag, childs);
        case TagNumber.NumericString:
        case TagNumber.PrintableString:
        case TagNumber.TeletexString:
        case TagNumber.VideotexString:
        case TagNumber.IA5String:
        case TagNumber.GraphicString:
        case TagNumber.VisibleString:
        case TagNumber.GeneralString:
        case TagNumber.UniversalString:
          return ASN1ISOString(content, headerLength, size, tag, childs);
        case TagNumber.BMPString:
          return ASN1BMPString(content, headerLength, size, tag, childs);
        // Currently not supported, defaults to a generic ASN1Object for compatibility
        case TagNumber.ObjectDescriptor:
        case TagNumber.EXTERNAL:
        case TagNumber.REAL:
        case TagNumber.EMBEDDED_PDV:
        case TagNumber.RELATIVE_OID:
        case TagNumber.CHARACTER_STRING:
        default:
          return ASN1Object(content, headerLength, size, tag, childs);
      }
    } else if (tag.tagClass == TagClass.contextSpecific) {
      return ASN1Container(content, headerLength, size, tag, childs);
    }
    // Any other ASN1 object
    return ASN1Object(content, headerLength, size, tag, childs);
  }
}
