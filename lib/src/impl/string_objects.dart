/// Collects all string related objects
import 'dart:typed_data';

import '../asn1object.dart';
import '../asn1tag.dart';
import '../extensions/datautils.dart';
import '../extensions/recursive_parser.dart';
import '../parsed_structs.dart';

abstract class ASN1String extends ASN1Object {
  ASN1String(Uint8List data, int header, int? size, ASN1Tag tag,
      [List<ASN1Object>? childs])
      : super(data, header, size, tag, childs);
}

/// Represents BIT_STRING and OCTET_STRING.
///
/// [_parserType] must be provided.
class ASN1DataString extends ASN1String {
  final StringParserType _parserType;

  late final ParsedString _parsed;

  ASN1DataString(
      this._parserType, Uint8List data, int header, int? size, ASN1Tag tag,
      [List<ASN1Object>? childs])
      : super(data, header, size, tag, childs) {
    _parsed = recurse(_parserType, double.maxFinite.toInt());
  }

  @override
  String get value => _parsed.str;

  int get length => _parsed.size;
}

class ASN1UTF8String extends ASN1String {
  late String _parsed;

  ASN1UTF8String(Uint8List data, int header, int? size, ASN1Tag tag,
      [List<ASN1Object>? childs])
      : super(data, header, size, tag, childs) {
    _parsed = data.parseStringUTF(header, header + (size?.abs() ?? 0));
  }

  @override
  String get value => _parsed;
}

class ASN1ISOString extends ASN1String {
  late String _parsed;

  ASN1ISOString(Uint8List data, int header, int? size, ASN1Tag tag,
      [List<ASN1Object>? childs])
      : super(data, header, size, tag, childs) {
    _parsed = data.parseStringISO(header, header + (size?.abs() ?? 0));
  }

  @override
  String get value => _parsed;
}

class ASN1BMPString extends ASN1String {
  late String _parsed;

  ASN1BMPString(Uint8List data, int header, int? size, ASN1Tag tag,
      [List<ASN1Object>? childs])
      : super(data, header, size, tag, childs) {
    _parsed = data.parseStringBMP(header, header + (size?.abs() ?? 0));
  }

  @override
  String get value => _parsed;
}
