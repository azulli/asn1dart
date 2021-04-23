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

/// Generic decoder for ASN.1 data structures.
///
/// Derives from the asn1js javascript library by Lapo Luchini and uses the OID
/// table from Peter Gutmann's dumpasn1.
///
/// References:
/// - [asn1js](https://github.com/lapo-luchini/asn1js)
/// - [dumpasn1](https://www.cs.auckland.ac.nz/~pgut001/#standards)
library asn1dart;

export 'src/asn1_decoder.dart';
export 'src/asn1object.dart';
export 'src/asn1tag.dart';
export 'src/impl/base_objects.dart';
export 'src/impl/string_objects.dart';
export 'asn1_oids.dart';
export 'hex_decoder.dart';
