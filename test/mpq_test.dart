import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';

import 'package:test/test.dart';
import 'package:warcrafty/warcrafty.dart';

void main() {
  group('MpqArchive', () {
    late Directory dir;

    setUp(() {
      dir = Directory.systemTemp.createTempSync('warcrafty_mpq_');
    });

    tearDown(() {
      if (dir.existsSync()) dir.deleteSync(recursive: true);
    });

    test('creates, writes, reopens and extracts files', () {
      final mpqPath = '${dir.path}/roundtrip.mpq';
      final fileName = r'DBFilesClient\Test.dbc';
      final payload = Uint8List.fromList(utf8.encode('hello mpq'));

      final writer = MpqArchive.create(mpqPath, maxFileCount: 8);
      writer.addFile(fileName, payload, compress: true);
      writer.close();

      final reader = MpqArchive.open(mpqPath);
      try {
        expect(reader.files, contains(fileName));
        expect(reader.extract(fileName), payload);

        final extractedPath = '${dir.path}/Test.dbc';
        reader.extractTo(fileName, extractedPath);
        expect(File(extractedPath).readAsBytesSync(), payload);
      } finally {
        reader.close();
      }
    });
  });
}
