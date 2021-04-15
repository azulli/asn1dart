import 'dart:typed_data';

import 'asn1tag.dart';
import 'extensions/datautils.dart';

// Generic base class for all ASN.1 elements.
class ASN1Object {
  /// Byte stream dei dati che compongono l'oggetto ASN1 (è una subview)
  final Uint8List? data;

  /// Lunghezza dell'header
  final int header;

  /// Dimensione dell'oggetto
  final int? size;

  /// Tag
  final ASN1Tag? tag;

  /// Childs
  List<ASN1Object>? childs;

  int get tagLen => tag?.length ?? 0;

  ASN1Object(this.data, this.header, this.size, this.tag, [this.childs]);

  dynamic get value => tag!.isUniversal
      ? data?.parseOctetString(header, header + (size?.abs() ?? 0))
      : null;
}
