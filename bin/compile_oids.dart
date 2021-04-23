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
import 'dart:io';
import 'package:dart_style/dart_style.dart';
import 'package:format/format.dart';

/// Script for compiling the oids list configuration from dumpasn

const sourceConfig = 'data/dumpasn1.cfg';
const destConfig = 'lib/asn1_oids.dart';

const licenseHeader = '''// ASN.1 Dart decoder Copyright (c) 2021-2022 A. Zulli
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
''';

const oidEntryDef = '''class OIDEntry {
  final String description;
  final String comment;
  final bool warning;

  const OIDEntry(this.description, this.comment, this.warning);
}''';

const oidTableHead = 'const OIDTable = <String, OIDEntry> {';

const oidMapLine = '  \'{}\': OIDEntry(\'{}\', \'{}\', {}),';

const oidTableTail = '};';

void main() async {
  print('=== OIDs Configuration compiler ===');
  final f = File(sourceConfig);
  if (!f.existsSync()) {
    throw StateError('Missing dumpasn1.cfg');
  }
  var oids = <MapEntry<String, Map<String, dynamic>>>[];
  var stream = f.openRead();
  print('Converting the OIDs table…');
  await stream
      .transform(utf8.decoder)
      .transform(LineSplitter())
      .listen((event) {
        if (event.isNotEmpty && !event.startsWith('#')) {
          final line = event.split(' = ');
          if (line.first == 'OID') {
            oids.add(MapEntry(line.last.replaceAll(' ', '.'),
                {'d': null, 'c': null, 'w': false}));
          } else if (line.first == 'Comment') {
            oids.last.value['c'] = line.last;
          } else if (line.first == 'Description') {
            oids.last.value['d'] = line.last;
          } else if (line.first == 'Warning') {
            oids.last.value['w'] = true;
          }
        }
      })
      .asFuture()
      .catchError((_) => print(_));
  print('Found OIDs: ${oids.length}');
  print('Generating source…');
  if (oids.isNotEmpty) {
    final buffer = StringBuffer();
    buffer.writeln(licenseHeader);
    buffer.writeln();
    buffer.writeln(oidEntryDef);
    buffer.writeln();
    buffer.writeln(oidTableHead);
    for (var oid in oids) {
      buffer.writeln(oidMapLine.format([
        oid.key,
        oid.value['d']?.replaceAll('\'', '\\\''),
        oid.value['c']?.replaceAll('\'', '\\\''),
        oid.value['w']
      ]));
    }
    buffer.write(oidTableTail);
    final formatter = DartFormatter();

    var out = File(destConfig).openWrite();
    out.writeln(formatter.format(buffer.toString()));
  }
}
