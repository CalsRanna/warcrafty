import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';

import 'package:test/test.dart';
import 'package:warcrafty/src/internal/header.dart';
// 内部模块导入（仅用于测试）
import 'package:warcrafty/src/internal/offset.dart';
import 'package:warcrafty/src/internal/string.dart';
import 'package:warcrafty/src/tool/locale_field.dart';
import 'package:warcrafty/warcrafty.dart';

void main() {
  group('FieldType', () {
    test('fromChar returns correct format', () {
      expect(FieldType.fromChar('n'), equals(FieldType.id));
      expect(FieldType.fromChar('i'), equals(FieldType.int32));
      expect(FieldType.fromChar('s'), equals(FieldType.string));
      expect(FieldType.fromChar('f'), equals(FieldType.float));
      expect(FieldType.fromChar('b'), equals(FieldType.uint8));
    });

    test('size returns correct byte size', () {
      expect(FieldType.uint8.size, equals(1));
      expect(FieldType.unusedByte.size, equals(1));
      expect(FieldType.int32.size, equals(4));
      expect(FieldType.float.size, equals(4));
      expect(FieldType.string.size, equals(4));
    });
  });

  group('FieldOffsets', () {
    test('calculates correct offsets for simple format', () {
      final calculator = FieldOffsets('niii');
      expect(calculator[0], equals(0));
      expect(calculator[1], equals(4));
      expect(calculator[2], equals(8));
      expect(calculator[3], equals(12));
    });

    test('calculates correct record size', () {
      final calculator = FieldOffsets('niii');
      expect(calculator.recordSize, equals(16));
    });

    test('handles byte fields correctly', () {
      final calculator = FieldOffsets('nbbii');
      expect(calculator[0], equals(0));
      expect(calculator[1], equals(4));
      expect(calculator[2], equals(5));
      expect(calculator[3], equals(6));
      expect(calculator[4], equals(10));
      expect(calculator.recordSize, equals(14));
    });

    test('finds index field position', () {
      final calculator = FieldOffsets('niii');
      expect(calculator.indexField, equals(0));
    });

    test('returns -1 when no index field exists', () {
      final calculator = FieldOffsets('iiii');
      expect(calculator.indexField, equals(-1));
    });
  });

  group('DbcHeader', () {
    test('creates valid header', () {
      final header = DbcHeader(
        signature: 'WDBC',
        recordCount: 100,
        fieldCount: 5,
        recordSize: 20,
        stringBlockSize: 1024,
      );

      expect(header.signature, equals('WDBC'));
      expect(header.recordCount, equals(100));
      expect(header.fieldCount, equals(5));
      expect(header.recordSize, equals(20));
      expect(header.stringBlockSize, equals(1024));
    });

    test('parses bytes correctly', () {
      final byteData = ByteData(20);
      byteData.setUint32(0, DbcHeader.signatureValue, Endian.little);
      byteData.setInt32(4, 50, Endian.little);
      byteData.setInt32(8, 6, Endian.little);
      byteData.setInt32(12, 24, Endian.little);
      byteData.setInt32(16, 512, Endian.little);
      final bytes = byteData.buffer.asUint8List();

      final header = DbcHeader.fromBytes(bytes);

      expect(header.recordCount, equals(50));
      expect(header.fieldCount, equals(6));
      expect(header.recordSize, equals(24));
      expect(header.stringBlockSize, equals(512));
    });

    test('round trips through toBytes', () {
      final original = DbcHeader(
        signature: 'WDBC',
        recordCount: 100,
        fieldCount: 5,
        recordSize: 20,
        stringBlockSize: 1024,
      );

      final bytes = original.toBytes();
      final parsed = DbcHeader.fromBytes(bytes);

      expect(parsed.recordCount, equals(original.recordCount));
      expect(parsed.fieldCount, equals(original.fieldCount));
      expect(parsed.recordSize, equals(original.recordSize));
      expect(parsed.stringBlockSize, equals(original.stringBlockSize));
    });

    test('throws on invalid signature', () {
      final byteData = ByteData(20);
      byteData.setUint32(0, 0xDEADBEEF, Endian.little);
      final bytes = byteData.buffer.asUint8List();

      expect(
        () => DbcHeader.fromBytes(bytes),
        throwsA(isA<InvalidSignatureException>()),
      );
    });

    test('throws on invalid field count', () {
      final byteData = ByteData(20);
      byteData.setUint32(0, DbcHeader.signatureValue, Endian.little);
      byteData.setInt32(4, 10, Endian.little);
      byteData.setInt32(8, 0, Endian.little);
      byteData.setInt32(12, 20, Endian.little);
      byteData.setInt32(16, 100, Endian.little);
      final bytes = byteData.buffer.asUint8List();

      expect(() => DbcHeader.fromBytes(bytes), throwsA(isA<FormatException>()));
    });
  });

  group('StringBlock', () {
    test('handles empty string block', () {
      final handler = StringBlock(Uint8List.fromList([0]));
      expect(handler.read(0), equals(''));
      expect(handler.count, equals(1));
    });

    test('reads strings correctly', () {
      final data = Uint8List.fromList([
        0,
        ...utf8.encode('Hello'),
        0,
        ...utf8.encode('World'),
        0,
      ]);

      final handler = StringBlock(data);
      expect(handler.read(1), equals('Hello'));
      expect(handler.read(7), equals('World'));
    });

    test('returns empty string for invalid offset', () {
      final handler = StringBlock(Uint8List.fromList([0]));
      expect(handler.read(100), equals(''));
    });

    test('builds correct string cache', () {
      final data = Uint8List.fromList([
        0,
        ...utf8.encode('Test'),
        0,
        ...utf8.encode('Another'),
        0,
      ]);

      final handler = StringBlock(data);
      expect(handler.count, equals(3));
      expect(handler.all, containsAll(['Test', 'Another']));
    });
  });

  group('StringTable', () {
    test('starts with empty string at offset 0', () {
      final builder = StringTable();
      expect(builder.add(''), equals(0));
    });

    test('deduplicates strings', () {
      final builder = StringTable();
      expect(builder.add('Hello'), equals(1));
      expect(builder.add('Hello'), equals(1));
      expect(builder.add('World'), equals(7));
    });

    test('builds correct string table', () {
      final builder = StringTable();
      builder.add('Hello');
      builder.add('World');

      final table = builder.build();

      expect(table[0], equals(0));
      expect(utf8.decode(table.sublist(1, 6)), equals('Hello'));
      expect(table[6], equals(0));
      expect(utf8.decode(table.sublist(7, 12)), equals('World'));
      expect(table[12], equals(0));
    });

    test('handles unicode strings', () {
      final builder = StringTable();
      final offset = builder.add('你好世界');
      expect(offset, equals(1));

      final table = builder.build();
      expect(table[0], equals(0));
      expect(utf8.decode(table.sublist(1)), startsWith('你好世界'));
    });
  });

  group('DbcIndex', () {
    test('builds index from list of maps', () {
      final records = [
        {'ID': 1, 'Name': 'One'},
        {'ID': 2, 'Name': 'Two'},
        {'ID': 3, 'Name': 'Three'},
      ];

      final builder = DbcIndex<Map<String, dynamic>>(records, 0);
      expect(builder.count, equals(3));
      expect(builder.lookup(1)?['Name'], equals('One'));
      expect(builder.lookup(2)?['Name'], equals('Two'));
      expect(builder.lookup(3)?['Name'], equals('Three'));
      expect(builder.lookup(99), isNull);
    });

    test('contains returns correct result', () {
      final records = [
        {'ID': 1, 'Name': 'One'},
        {'ID': 2, 'Name': 'Two'},
      ];

      final builder = DbcIndex<Map<String, dynamic>>(records, 0);
      expect(builder.contains(1), isTrue);
      expect(builder.contains(2), isTrue);
      expect(builder.contains(99), isFalse);
    });

    test('lookupOrThrow throws for missing ID', () {
      final records = [
        {'ID': 1, 'Name': 'One'},
      ];

      final builder = DbcIndex<Map<String, dynamic>>(records, 0);
      expect(() => builder.lookupOrThrow(99), throwsA(isA<StateError>()));
    });
  });

  group('DbcWriter', () {
    test('writes and reads back simple records', () async {
      final testFile = File('${Directory.systemTemp.path}/test_output.dbc');

      try {
        DbcWriter.writeToPath(testFile.path, 'nii', [
          [1, 100, 200],
          [2, 300, 400],
        ]);

        final loader = DbcLoader(testFile.path, 'nii');
        expect(loader.recordCount, equals(2));

        final record1 = loader.getRecord(0);
        expect(record1.getInt(0), equals(1));
        expect(record1.getInt(1), equals(100));
        expect(record1.getInt(2), equals(200));

        final record2 = loader.getRecord(1);
        expect(record2.getInt(0), equals(2));
        expect(record2.getInt(1), equals(300));
        expect(record2.getInt(2), equals(400));
      } finally {
        if (await testFile.exists()) {
          await testFile.delete();
        }
      }
    });

    test('handles string fields with deduplication', () async {
      final testFile = File('${Directory.systemTemp.path}/test_strings.dbc');

      try {
        DbcWriter.writeToPath(testFile.path, 'ns', [
          [1, 'Hello'],
          [2, 'World'],
          [3, 'Hello'],
        ]);

        final loader = DbcLoader(testFile.path, 'ns');
        expect(loader.getRecord(0).getString(1), equals('Hello'));
        expect(loader.getRecord(1).getString(1), equals('World'));
        expect(loader.getRecord(2).getString(1), equals('Hello'));
      } finally {
        if (await testFile.exists()) {
          await testFile.delete();
        }
      }
    });

    test('throws on field count mismatch', () {
      final testFile = File('${Directory.systemTemp.path}/test_error.dbc');

      expect(
        () => DbcWriter.writeToPath(testFile.path, 'nii', [
          [1, 100, 200, 300],
        ]),
        throwsA(isA<FormatException>()),
      );
    });
  });

  group('DbcRecord', () {
    test('getInt reads signed integers correctly', () async {
      final testFile = File('${Directory.systemTemp.path}/test_int.dbc');

      try {
        DbcWriter.writeToPath(testFile.path, 'nii', [
          [1, 100, -100],
        ]);

        final loader = DbcLoader(testFile.path, 'nii');
        final record = loader.getRecord(0);

        expect(record.getInt(1), equals(100));
        expect(record.getInt(2), equals(-100));
      } finally {
        if (await testFile.exists()) {
          await testFile.delete();
        }
      }
    });

    test('getFloat reads floats correctly', () async {
      final testFile = File('${Directory.systemTemp.path}/test_float.dbc');

      try {
        DbcWriter.writeToPath(testFile.path, 'nf', [
          [1, 3.14],
        ]);

        final loader = DbcLoader(testFile.path, 'nf');
        final record = loader.getRecord(0);

        expect((record.getFloat(1) - 3.14).abs(), lessThan(0.0001));
      } finally {
        if (await testFile.exists()) {
          await testFile.delete();
        }
      }
    });

    test('toMap converts record to map', () async {
      final testFile = File('${Directory.systemTemp.path}/test_map.dbc');

      try {
        DbcWriter.writeToPath(testFile.path, 'nii', [
          [1, 100, 200],
        ]);

        final loader = DbcLoader(testFile.path, 'nii');
        final map = loader.getRecord(0).toMap();

        expect(map['field_0'], equals(1));
        expect(map['field_1'], equals(100));
        expect(map['field_2'], equals(200));
      } finally {
        if (await testFile.exists()) {
          await testFile.delete();
        }
      }
    });
  });

  group('DbcLoader', () {
    test('loads records correctly', () async {
      final testFile = File('${Directory.systemTemp.path}/test_records.dbc');

      try {
        DbcWriter.writeToPath(testFile.path, 'nii', [
          [1, 100, 200],
          [2, 300, 400],
          [3, 500, 600],
        ]);

        final loader = DbcLoader(testFile.path, 'nii');
        expect(loader.recordCount, equals(3));
        expect(loader.fieldCount, equals(3));
        expect(loader.format, equals('nii'));
      } finally {
        if (await testFile.exists()) {
          await testFile.delete();
        }
      }
    });

    test('iterates records', () async {
      final testFile = File('${Directory.systemTemp.path}/test_iter.dbc');

      try {
        DbcWriter.writeToPath(testFile.path, 'nii', [
          [1, 10, 20],
          [2, 30, 40],
          [3, 50, 60],
        ]);

        final loader = DbcLoader(testFile.path, 'nii');
        final ids = loader.records.map((r) => r.getInt(0)).toList();

        expect(ids, equals([1, 2, 3]));
      } finally {
        if (await testFile.exists()) {
          await testFile.delete();
        }
      }
    });

    test('converts to map list', () async {
      final testFile = File('${Directory.systemTemp.path}/test_maplist.dbc');

      try {
        DbcWriter.writeToPath(testFile.path, 'nii', [
          [1, 100, 200],
          [2, 300, 400],
        ]);

        final loader = DbcLoader(testFile.path, 'nii');
        final mapList = loader.toMapList();

        expect(mapList.length, equals(2));
        expect(mapList[0]['field_0'], equals(1));
        expect(mapList[1]['field_0'], equals(2));
      } finally {
        if (await testFile.exists()) {
          await testFile.delete();
        }
      }
    });

    test('throws on invalid record index', () async {
      final testFile = File('${Directory.systemTemp.path}/test_invalid.dbc');

      try {
        DbcWriter.writeToPath(testFile.path, 'nii', [
          [1, 100, 200],
        ]);

        final loader = DbcLoader(testFile.path, 'nii');
        expect(
          () => loader.getRecord(99),
          throwsA(isA<RecordIndexOutOfRangeException>()),
        );
      } finally {
        if (await testFile.exists()) {
          await testFile.delete();
        }
      }
    });

    test('async load works correctly', () async {
      final testFile = File('${Directory.systemTemp.path}/test_async.dbc');

      try {
        DbcWriter.writeToPath(testFile.path, 'nii', [
          [1, 100, 200],
        ]);

        final loader = await DbcLoader.loadAsync(testFile.path, 'nii');

        expect(loader.recordCount, equals(1));
        expect(loader.getRecord(0).getInt(0), equals(1));
      } finally {
        if (await testFile.exists()) {
          await testFile.delete();
        }
      }
    });
  });

  group('DbcWriter Type Validation', () {
    test('throws on wrong integer type', () {
      final testFile = File('${Directory.systemTemp.path}/test_type_int.dbc');

      expect(
        () => DbcWriter.writeToPath(testFile.path, 'ni', [
          [1, 'not an int'], // 应该是 int，给了 String
        ]),
        throwsA(isA<WriteException>()),
      );
    });

    test('throws on wrong string type', () {
      final testFile = File('${Directory.systemTemp.path}/test_type_str.dbc');

      expect(
        () => DbcWriter.writeToPath(testFile.path, 'ns', [
          [1, 123], // 应该是 String，给了 int
        ]),
        throwsA(isA<WriteException>()),
      );
    });

    test('throws on wrong float type', () {
      final testFile = File('${Directory.systemTemp.path}/test_type_float.dbc');

      expect(
        () => DbcWriter.writeToPath(testFile.path, 'nf', [
          [1, 'not a float'], // 应该是 num，给了 String
        ]),
        throwsA(isA<WriteException>()),
      );
    });

    test('throws on byte out of range', () {
      final testFile = File('${Directory.systemTemp.path}/test_type_byte.dbc');

      expect(
        () => DbcWriter.writeToPath(testFile.path, 'nb', [
          [1, 300], // byte 范围是 0-255
        ]),
        throwsA(isA<WriteException>()),
      );
    });

    test('accepts int for float field', () async {
      final testFile = File('${Directory.systemTemp.path}/test_int_float.dbc');

      try {
        // int 可以用于 float 字段（num 类型）
        DbcWriter.writeToPath(testFile.path, 'nf', [
          [1, 42], // int 可以转为 double
        ]);

        final loader = DbcLoader(testFile.path, 'nf');
        expect(loader.getRecord(0).getFloat(1), equals(42.0));
      } finally {
        if (await testFile.exists()) {
          await testFile.delete();
        }
      }
    });
  });

  group('Format Definition Validation', () {
    test('Achievement format length matches field count', () {
      final achievementDef = Definitions.achievement;
      expect(
        achievementDef.format.length,
        equals(
          62,
        ), // niixssssssssssssssssxxxxxxxxxxxxxxxxxxiixixxxxxxxxxxxxxxxxxxii = 62 字符
      );
    });

    test('TotemCategory format length matches field count', () {
      final totemCategoryDef = Definitions.totemCategory;
      expect(
        totemCategoryDef.format.length,
        equals(20), // nxxxxxxxxxxxxxxxxxii = 20 字符
      );
    });

    test('locale fields helper creates correct count', () {
      final fields = createLocaleFields(0, 'Name', '名称');
      expect(fields.length, equals(16));
      expect(fields.first.name, equals('Name_enUS'));
      expect(fields.last.name, equals('Name_unk3'));
    });

    test('unused fields helper creates correct count', () {
      final fields = createUnusedFields(10, 5);
      expect(fields.length, equals(5));
      expect(fields.first.index, equals(10));
      expect(fields.first.name, equals('Unused10'));
      expect(fields.last.index, equals(14));
      expect(fields.last.name, equals('Unused14'));
    });
  });
}
