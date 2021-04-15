import 'dart:convert';
import 'dart:io';
import 'package:format/format.dart';

/// Script for compiling the oids list configuration from dumpasn

const sourceConfig = 'data/dumpasn1.cfg';
const destConfig = 'lib/src/asn1_oids.dart';

const oidEntryDef = '''class OIDEntry {
  final String description;
  final String comment;
  final bool warning;

  const OIDEntry(this.description, this.comment, this.warning);
}''';

const oidMapLine = '  \'{}\': OIDEntry(\'{}\', \'{}\', {}),';

void main() async {
  print('OIDS Configuration compiler');
  final f = File(sourceConfig);
  if (!f.existsSync()) {
    throw StateError('Missing dumpasn1.cfg');
  }
  var oids = <MapEntry<String, Map<String, dynamic>>>[];
  var stream = f.openRead();
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
  print('Found OIDS: ${oids.length}');
  if (oids.isNotEmpty) {
    var out = File(destConfig).openWrite();
    out.writeln('$oidEntryDef\n\n'
        'const OIDTable = <String, OIDEntry> {');
    for (var oid in oids) {
      out.writeln(oidMapLine.format([
        oid.key,
        oid.value['d']?.replaceAll('\'', '\\\''),
        oid.value['c']?.replaceAll('\'', '\\\''),
        oid.value['w']
      ]));
    }
    out.writeln('};');
  }
}
