/// Parsed structures

/// Result of a BitString or OctetString parsing.
class ParsedString {
  final int size;
  final String str;

  ParsedString(this.size, this.str);

  @override
  String toString() => str;
}

class ParsedInteger {
  final BigInt value;
  final int bits;

  ParsedInteger(this.value, [this.bits = 8]);

  @override
  String toString() => value.toRadixString(bits > 64 ? 16 : 10);
}

class ParsedTime {
  final DateTime dt;
  final String? tz;

  ParsedTime(this.dt, this.tz);

  @override
  String toString() {
    return dt.toIso8601String() + (tz ?? '');
  }
}

class ParsedOID {
  final String oid;
  final List<int> components;
  final bool isComplete;

  ParsedOID(this.oid, this.components, this.isComplete);

  @override
  String toString() => oid;
}
