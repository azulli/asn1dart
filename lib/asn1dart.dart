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
