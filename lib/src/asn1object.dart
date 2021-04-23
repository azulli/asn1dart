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

import 'dart:typed_data';

import 'asn1tag.dart';
import 'extensions/datautils.dart';

// Generic base class for all ASN.1 elements.
class ASN1Object {
  /// Byte stream of the ASN1 element data.
  ///
  /// It's a subview of the main data bytes
  final Uint8List? data;

  /// Header length
  final int header;

  /// Object size without the header
  final int? size;

  /// Tag
  final ASN1Tag? tag;

  /// Childs
  List<ASN1Object>? childs;

  int get tagLen => tag?.length ?? 0;

  ASN1Object(this.data, this.header, this.size, this.tag, [this.childs]);

  /// The parsed value of this element data.
  dynamic get value => tag!.isUniversal
      ? data?.parseOctetString(header, header + (size?.abs() ?? 0))
      : null;

  /// The raw value of the element data.
  Uint8List? get content => data != null
      ? Uint8List.sublistView(data!, header, header + (size?.abs() ?? 0))
      : null;

  /// The child at specific [index].
  dynamic? operator [](int index) => childs?[index];
}
