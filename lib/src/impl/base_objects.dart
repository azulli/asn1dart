import 'dart:typed_data';

import '../asn1object.dart';
import '../asn1tag.dart';
import '../extensions/datautils.dart';
import '../parsed_structs.dart';

class ASN1EOC extends ASN1Object {
  ASN1EOC(ASN1Tag tag) : super(null, 0, 2, tag);
}

class ASN1Null extends ASN1Object {
  ASN1Null(int header, ASN1Tag tag) : super(null, header, 0, tag);
}

class ASN1Boolean extends ASN1Object {
  late bool _value;

  ASN1Boolean(Uint8List data, int header, ASN1Tag tag,
      [List<ASN1Object>? childs])
      : super(data, header, 1, tag, childs) {
    _value = data[header] != 0x00;
  }

  @override
  bool get value => _value;
}

class ASN1Integer extends ASN1Object {
  late ParsedInteger _value;

  ASN1Integer(Uint8List data, int header, int size, ASN1Tag tag,
      [List<ASN1Object>? childs])
      : super(data, header, size, tag, childs) {
    _value = data.parseInteger(header, header + size.abs());
  }

  @override
  BigInt get value => _value.value;

  int get bits => _value.bits;
}

class ASN1Enumerated extends ASN1Integer {
  ASN1Enumerated(Uint8List data, int header, int size, ASN1Tag tag,
      [List<ASN1Object>? childs])
      : super(data, header, size, tag, childs);
}

class ASN1ObjectIdentifier extends ASN1Object {
  late ParsedOID _value;

  ASN1ObjectIdentifier(Uint8List data, int header, int size, ASN1Tag tag,
      [List<ASN1Object>? childs])
      : super(data, header, size, tag, childs) {
    _value = data.parseOID(header, header + size.abs());
  }

  @override
  String get value => _value.oid;

  List<int> get components => _value.components;

  bool get isIncomplete => !_value.isComplete;
}

class ASN1Time extends ASN1Object {
  late ParsedTime _value;

  bool get isUTC => tag!.tagNumber == TagNumber.UTCTime;

  bool get isGeneralized => tag!.tagNumber == TagNumber.GeneralizedTime;

  ASN1Time(Uint8List data, int header, int size, ASN1Tag tag,
      [List<ASN1Object>? childs])
      : super(data, header, size, tag, childs) {
    _value = data.parseTime(
        header, header + size.abs(), (tag.tagNumber == TagNumber.UTCTime));
  }

  @override
  DateTime get value => _value.dt;

  String? get timeZone => _value.tz;
}

/// Represents the SET and SEQUENCE structurd types
class ASN1Collection extends ASN1Object {
  ASN1Collection(Uint8List data, int header, int? size, ASN1Tag tag,
      [List<ASN1Object>? childs])
      : super(data, header, size, tag, childs);
}

/// Generic container of unstructured data
class ASN1Container extends ASN1Object {
  ASN1Container(Uint8List data, int header, int? size, ASN1Tag tag,
      [List<ASN1Object>? childs])
      : super(data, header, size, tag, childs);
}
