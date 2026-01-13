import 'dart:io';
import 'dart:typed_data';

import 'package:warcrafty/src/dbc/record.dart';
import 'package:warcrafty/src/internal/string_block_writer.dart';

import 'loader.dart';
import '../internal/field.dart';
import '../internal/header.dart';
import '../internal/offset.dart';
import '../internal/exception.dart';

/// DBC 文件写入器
final class DbcWriter {
  final String _path;
  final String _format;
  final FieldOffsets _offsets;
  final int _fieldCount;

  DbcWriter(this._path, this._format)
    : _offsets = FieldOffsets(_format),
      _fieldCount = _format.length;

  /// 写入记录
  void write(List<List<dynamic>> records) {
    final file = File(_path).openSync(mode: FileMode.write);

    try {
      final stringTable = StringBlockWriter();
      _collectStrings(records, stringTable);

      final table = stringTable.build();
      final header = DbcHeader(
        signature: 'WDBC',
        recordCount: records.length,
        fieldCount: _fieldCount,
        recordSize: _offsets.recordSize,
        stringBlockSize: table.length,
      );

      file.writeFromSync(header.toBytes());
      for (final record in records) {
        file.writeFromSync(_encodeRecord(record, stringTable));
      }
      file.writeFromSync(table);
    } finally {
      file.closeSync();
    }
  }

  /// 异步写入
  Future<void> writeAsync(List<List<dynamic>> records) async {
    final file = await File(_path).open(mode: FileMode.write);

    try {
      final stringTable = StringBlockWriter();
      _collectStrings(records, stringTable);

      final table = stringTable.build();
      final header = DbcHeader(
        signature: 'WDBC',
        recordCount: records.length,
        fieldCount: _fieldCount,
        recordSize: _offsets.recordSize,
        stringBlockSize: table.length,
      );

      await file.writeFrom(header.toBytes());
      for (final record in records) {
        await file.writeFrom(_encodeRecord(record, stringTable));
      }
      await file.writeFrom(table);
    } finally {
      await file.close();
    }
  }

  void _collectStrings(List<List<dynamic>> records, StringBlockWriter table) {
    for (int ri = 0; ri < records.length; ri++) {
      final record = records[ri];
      if (record.length != _fieldCount) {
        throw DbcFormatException(
          'Record $ri: expected $_fieldCount fields, got ${record.length}',
        );
      }

      for (int i = 0; i < _fieldCount; i++) {
        final type = FieldType.fromChar(_format[i]);
        final value = record[i];
        _validateField(ri, i, type, value);
        if (type == FieldType.string) {
          table.add(value as String);
        }
      }
    }
  }

  void _validateField(int ri, int fi, FieldType type, dynamic value) {
    switch (type) {
      case FieldType.uint8:
      case FieldType.int32:
      case FieldType.id:
        if (value is! int) {
          throw WriteException('Record $ri, field $fi: expected int');
        }
        if (type == FieldType.uint8 && (value < 0 || value > 255)) {
          throw WriteException('Record $ri, field $fi: byte out of range');
        }
      case FieldType.float:
        if (value is! num) {
          throw WriteException('Record $ri, field $fi: expected num');
        }
      case FieldType.string:
        if (value is! String) {
          throw WriteException('Record $ri, field $fi: expected String');
        }
      case FieldType.boolean:
        if (value is! bool) {
          throw WriteException('Record $ri, field $fi: expected bool');
        }
      case FieldType.unused:
      case FieldType.unusedByte:
      case FieldType.sort:
        break;
    }
  }

  Uint8List _encodeRecord(List<dynamic> record, StringBlockWriter table) {
    final bytes = ByteData(_offsets.recordSize);

    for (int i = 0; i < _fieldCount; i++) {
      final offset = _offsets[i];
      final type = FieldType.fromChar(_format[i]);
      final value = record[i];

      switch (type) {
        case FieldType.uint8:
          bytes.setUint8(offset, value as int);
        case FieldType.int32:
        case FieldType.id:
          bytes.setInt32(offset, value as int, Endian.little);
        case FieldType.float:
          bytes.setFloat32(offset, (value as num).toDouble(), Endian.little);
        case FieldType.string:
          bytes.setInt32(offset, table.add(value as String), Endian.little);
        case FieldType.boolean:
          bytes.setInt32(offset, (value as bool) ? 1 : 0, Endian.little);
        case FieldType.unused:
        case FieldType.unusedByte:
        case FieldType.sort:
          break;
      }
    }

    return bytes.buffer.asUint8List();
  }

  /// 静态方法：写入文件
  static void writeToPath(
    String path,
    String format,
    List<List<dynamic>> records,
  ) {
    DbcWriter(path, format).write(records);
  }

  /// 静态方法：异步写入
  static Future<void> writeToPathAsync(
    String path,
    String format,
    List<List<dynamic>> records,
  ) {
    return DbcWriter(path, format).writeAsync(records);
  }

  /// 从现有文件复制并修改
  static void copyWithModify(
    String sourcePath,
    String format,
    String outputPath,
    List<dynamic> Function(DbcRecord source) modify,
  ) {
    final loader = DbcLoader(sourcePath, format);
    final records = loader.records.map(modify).toList();
    DbcWriter(outputPath, format).write(records);
  }

  @override
  String toString() => 'DbcWriter($_path, format: $_format)';
}
