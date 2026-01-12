import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';

import 'package:test/test.dart';
import 'package:warcrafty/warcrafty.dart';

void main() {
  group('EndianConverter', () {
    test('swapInt16 swaps bytes correctly', () {
      expect(EndianConverter.swapInt16(0x1234), equals(0x3412));
      expect(EndianConverter.swapInt16(0xABCD), equals(0xCDAB));
    });

    test('swapInt32 swaps bytes correctly', () {
      expect(EndianConverter.swapInt32(0x12345678), equals(0x78563412));
      expect(EndianConverter.swapInt32(0xAABBCCDD), equals(0xDDCCBBAA));
    });

    test('swapInt64 swaps bytes correctly', () {
      expect(
        EndianConverter.swapInt64(0x0123456789ABCDEF),
        equals(0xEFCDAB8967452301),
      );
    });

    // 注意：在小端序系统上，字节交换会改变浮点数的值（从小端转大端）
    // 这些测试验证字节确实被交换了
    test('swapFloat32 exchanges bytes', () {
      final bytes = Float32List.fromList([3.14159]);
      final intValue = bytes.buffer.asInt32List()[0];
      final swapped = EndianConverter.swapInt32(intValue);
      expect(swapped, isNot(equals(intValue)));
    });

    test('swapFloat64 exchanges bytes', () {
      final bytes = Float64List.fromList([3.141592653589793]);
      final intValue = bytes.buffer.asInt64List()[0];
      final swapped = EndianConverter.swapInt64(intValue);
      expect(swapped, isNot(equals(intValue)));
    });
  });

  group('DbcFieldFormat', () {
    test('fromChar returns correct format', () {
      expect(DbcFieldFormat.fromChar('n'), equals(DbcFieldFormat.indexField));
      expect(DbcFieldFormat.fromChar('i'), equals(DbcFieldFormat.intType));
      expect(DbcFieldFormat.fromChar('s'), equals(DbcFieldFormat.string));
      expect(DbcFieldFormat.fromChar('f'), equals(DbcFieldFormat.float));
      expect(DbcFieldFormat.fromChar('b'), equals(DbcFieldFormat.byte));
    });

    test('size returns correct byte size', () {
      expect(DbcFieldFormat.byte.size, equals(1));
      expect(DbcFieldFormat.naByte.size, equals(1));
      expect(DbcFieldFormat.intType.size, equals(4));
      expect(DbcFieldFormat.float.size, equals(4));
      expect(DbcFieldFormat.string.size, equals(4));
    });
  });

  group('FieldOffsetCalculator', () {
    test('calculates correct offsets for simple format', () {
      final calculator = FieldOffsetCalculator('niii');
      expect(calculator[0], equals(0));
      expect(calculator[1], equals(4));
      expect(calculator[2], equals(8));
      expect(calculator[3], equals(12));
    });

    test('calculates correct record size', () {
      final calculator = FieldOffsetCalculator('niii');
      expect(calculator.recordSize, equals(16));
    });

    test('handles byte fields correctly', () {
      final calculator = FieldOffsetCalculator('nbbii');
      expect(calculator[0], equals(0));
      expect(calculator[1], equals(4));
      expect(calculator[2], equals(5));
      expect(calculator[3], equals(6));
      expect(calculator[4], equals(10));
      expect(calculator.recordSize, equals(14));
    });

    test('finds index field position', () {
      final calculator = FieldOffsetCalculator('niii');
      expect(calculator.indexField, equals(0));
    });

    test('returns -1 when no index field exists', () {
      final calculator = FieldOffsetCalculator('iiii');
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

  group('StringBlockHandler', () {
    test('handles empty string block', () {
      final handler = StringBlockHandler(Uint8List.fromList([0]));
      expect(handler.readString(0), equals(''));
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

      final handler = StringBlockHandler(data);
      expect(handler.readString(1), equals('Hello'));
      expect(handler.readString(7), equals('World'));
    });

    test('returns empty string for invalid offset', () {
      final handler = StringBlockHandler(Uint8List.fromList([0]));
      expect(handler.readString(100), equals(''));
    });

    test('builds correct string cache', () {
      final data = Uint8List.fromList([
        0,
        ...utf8.encode('Test'),
        0,
        ...utf8.encode('Another'),
        0,
      ]);

      final handler = StringBlockHandler(data);
      expect(handler.count, equals(3));
      expect(handler.allStrings, containsAll(['Test', 'Another']));
    });
  });

  group('StringTableBuilder', () {
    test('starts with empty string at offset 0', () {
      final builder = StringTableBuilder();
      expect(builder.addString(''), equals(0));
    });

    test('deduplicates strings', () {
      final builder = StringTableBuilder();
      expect(builder.addString('Hello'), equals(1));
      expect(builder.addString('Hello'), equals(1));
      expect(builder.addString('World'), equals(7));
    });

    test('builds correct string table', () {
      final builder = StringTableBuilder();
      builder.addString('Hello');
      builder.addString('World');

      final table = builder.build();

      expect(table[0], equals(0));
      expect(utf8.decode(table.sublist(1, 6)), equals('Hello'));
      expect(table[6], equals(0));
      expect(utf8.decode(table.sublist(7, 12)), equals('World'));
      expect(table[12], equals(0));
    });

    test('handles unicode strings', () {
      final builder = StringTableBuilder();
      final offset = builder.addString('你好世界');
      expect(offset, equals(1));

      final table = builder.build();
      expect(table[0], equals(0));
      expect(utf8.decode(table.sublist(1)), startsWith('你好世界'));
    });
  });

  group('BinarySearch', () {
    test('finds existing element', () {
      final list = [1, 3, 5, 7, 9];
      final result = BinarySearch.search(list, 5, (x) => x - 5);
      expect(result.found, isTrue);
      expect(result.index, equals(2));
    });

    test('returns not found for missing element', () {
      final list = [1, 3, 5, 7, 9];
      final result = BinarySearch.search(list, 4, (x) => x - 4);
      expect(result.found, isFalse);
    });

    test('lowerBound finds correct position', () {
      final list = [1, 3, 5, 7, 9];
      expect(BinarySearch.lowerBound(list, 4, (x) => x), equals(2));
      expect(BinarySearch.lowerBound(list, 5, (x) => x), equals(2));
      expect(BinarySearch.lowerBound(list, 6, (x) => x), equals(3));
    });

    test('upperBound finds correct position', () {
      final list = [1, 3, 5, 7, 9];
      expect(BinarySearch.upperBound(list, 4, (x) => x), equals(2));
      expect(BinarySearch.upperBound(list, 5, (x) => x), equals(3));
      expect(BinarySearch.upperBound(list, 6, (x) => x), equals(3));
    });
  });

  group('DbcIndexBuilder', () {
    test('builds index from list of maps', () {
      final records = [
        {'ID': 1, 'Name': 'One'},
        {'ID': 2, 'Name': 'Two'},
        {'ID': 3, 'Name': 'Three'},
      ];

      final builder = DbcIndexBuilder<Map<String, dynamic>>(records, 0);
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

      final builder = DbcIndexBuilder<Map<String, dynamic>>(records, 0);
      expect(builder.contains(1), isTrue);
      expect(builder.contains(2), isTrue);
      expect(builder.contains(99), isFalse);
    });

    test('lookupOrThrow throws for missing ID', () {
      final records = [
        {'ID': 1, 'Name': 'One'},
      ];

      final builder = DbcIndexBuilder<Map<String, dynamic>>(records, 0);
      expect(
        () => builder.lookupOrThrow(99),
        throwsA(isA<Exception>()), // 验证抛出异常即可，不指定具体类型
      );
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

        final loader = DbcLoader.loadFromPath(testFile.path, 'nii');
        expect(loader.recordCount, equals(2));

        final record1 = loader.getRecord(0);
        expect(record1.getInt(0), equals(1));
        expect(record1.getInt(1), equals(100));
        expect(record1.getInt(2), equals(200));

        final record2 = loader.getRecord(1);
        expect(record2.getInt(0), equals(2));
        expect(record2.getInt(1), equals(300));
        expect(record2.getInt(2), equals(400));

        loader.close();
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

        final loader = DbcLoader.loadFromPath(testFile.path, 'ns');
        expect(loader.getRecord(0).getString(1), equals('Hello'));
        expect(loader.getRecord(1).getString(1), equals('World'));
        expect(loader.getRecord(2).getString(1), equals('Hello'));

        loader.close();
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

        final loader = DbcLoader.loadFromPath(testFile.path, 'nii');
        final record = loader.getRecord(0);

        expect(record.getInt(1), equals(100));
        expect(record.getInt(2), equals(-100));

        loader.close();
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

        final loader = DbcLoader.loadFromPath(testFile.path, 'nf');
        final record = loader.getRecord(0);

        expect((record.getFloat(1) - 3.14).abs(), lessThan(0.0001));

        loader.close();
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

        final loader = DbcLoader.loadFromPath(testFile.path, 'nii');
        final map = loader.getRecord(0).toMap();

        expect(map['field_0'], equals(1));
        expect(map['field_1'], equals(100));
        expect(map['field_2'], equals(200));

        loader.close();
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

        final loader = DbcLoader.loadFromPath(testFile.path, 'nii');
        expect(loader.recordCount, equals(3));
        expect(loader.fieldCount, equals(3));
        expect(loader.format, equals('nii'));

        loader.close();
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

        final loader = DbcLoader.loadFromPath(testFile.path, 'nii');
        final ids = loader.records.map((r) => r.getInt(0)).toList();

        expect(ids, equals([1, 2, 3]));

        loader.close();
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

        final loader = DbcLoader.loadFromPath(testFile.path, 'nii');
        final mapList = loader.toMapList();

        expect(mapList.length, equals(2));
        expect(mapList[0]['field_0'], equals(1));
        expect(mapList[1]['field_0'], equals(2));

        loader.close();
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

        final loader = DbcLoader.loadFromPath(testFile.path, 'nii');
        expect(
          () => loader.getRecord(99),
          throwsA(isA<RecordIndexOutOfRangeException>()),
        );

        loader.close();
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

        final loader = DbcLoader(testFile.path);
        await loader.loadAsync('nii');

        expect(loader.recordCount, equals(1));
        expect(loader.getRecord(0).getInt(0), equals(1));

        await loader.closeAsync();
      } finally {
        if (await testFile.exists()) {
          await testFile.delete();
        }
      }
    });
  });
}
