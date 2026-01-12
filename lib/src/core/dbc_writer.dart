import 'dart:io';
import 'dart:typed_data';

import 'package:warcrafty/src/core/dbc_loader.dart';
import 'package:warcrafty/src/core/field_format.dart';
import 'package:warcrafty/src/core/header.dart';
import 'package:warcrafty/src/handlers/offset_calculator.dart';
import 'package:warcrafty/src/handlers/string_handler.dart';
import 'package:warcrafty/src/utils/exceptions.dart';

/// DBC 文件写入器
final class DbcWriter {
  final String _path;
  final String _format;
  final FieldOffsetCalculator _fieldOffsets;
  final int _fieldCount;

  /// 创建 DBC 文件写入器
  ///
  /// [path] - 输出文件路径
  /// [format] - 格式字符串，如 'niiiiss'
  DbcWriter(this._path, this._format)
    : _fieldOffsets = FieldOffsetCalculator(_format),
      _fieldCount = _format.length;

  /// 写入记录列表
  ///
  /// [records] - 记录列表，每条记录是一个与格式字符串对应的值列表
  void write(List<List<dynamic>> records) {
    final file = File(_path).openSync(mode: FileMode.write);

    try {
      // 构建字符串表
      final stringTableBuilder = StringTableBuilder();

      // 第一遍：验证并收集所有字符串
      _collectStrings(records, stringTableBuilder);

      final stringTable = stringTableBuilder.build();

      // 创建文件头
      final header = DbcHeader(
        signature: 'WDBC',
        recordCount: records.length,
        fieldCount: _fieldCount,
        recordSize: _fieldOffsets.recordSize,
        stringBlockSize: stringTable.length,
      );

      // 写入头
      file.writeFromSync(header.toBytes());

      // 写入记录
      for (final record in records) {
        file.writeFromSync(_encodeRecord(record, stringTableBuilder));
      }

      // 写入字符串表
      file.writeFromSync(stringTable);
    } finally {
      file.closeSync();
    }
  }

  /// 异步写入记录列表
  Future<void> writeAsync(List<List<dynamic>> records) async {
    final file = await File(_path).open(mode: FileMode.write);

    try {
      // 构建字符串表
      final stringTableBuilder = StringTableBuilder();

      // 第一遍：验证并收集所有字符串
      _collectStrings(records, stringTableBuilder);

      final stringTable = stringTableBuilder.build();

      // 创建文件头
      final header = DbcHeader(
        signature: 'WDBC',
        recordCount: records.length,
        fieldCount: _fieldCount,
        recordSize: _fieldOffsets.recordSize,
        stringBlockSize: stringTable.length,
      );

      // 写入头
      await file.writeFrom(header.toBytes());

      // 写入记录
      for (final record in records) {
        await file.writeFrom(_encodeRecord(record, stringTableBuilder));
      }

      // 写入字符串表
      await file.writeFrom(stringTable);
    } finally {
      await file.close();
    }
  }

  /// 收集所有字符串并验证记录格式
  ///
  /// [records] - 记录列表
  /// [stringTableBuilder] - 字符串表构建器
  void _collectStrings(
    List<List<dynamic>> records,
    StringTableBuilder stringTableBuilder,
  ) {
    for (int recordIndex = 0; recordIndex < records.length; recordIndex++) {
      final record = records[recordIndex];

      if (record.length != _fieldCount) {
        throw FormatException(
          'Record $recordIndex field count mismatch: expected $_fieldCount, got ${record.length}',
        );
      }

      for (int i = 0; i < _fieldCount; i++) {
        final format = DbcFieldFormat.fromChar(_format[i]);
        final value = record[i];

        // 验证字段类型
        _validateFieldType(recordIndex, i, format, value);

        // 收集字符串
        if (format == DbcFieldFormat.string) {
          stringTableBuilder.addString(value as String);
        }
      }
    }
  }

  /// 验证字段值类型是否与格式匹配
  ///
  /// [recordIndex] - 记录索引
  /// [fieldIndex] - 字段索引
  /// [format] - 字段格式
  /// [value] - 字段值
  void _validateFieldType(
    int recordIndex,
    int fieldIndex,
    DbcFieldFormat format,
    dynamic value,
  ) {
    switch (format) {
      case DbcFieldFormat.byte:
      case DbcFieldFormat.intType:
      case DbcFieldFormat.indexField:
        if (value is! int) {
          throw WriteException(
            'Record $recordIndex, field $fieldIndex: expected int, got ${value.runtimeType}',
          );
        }
        if (format == DbcFieldFormat.byte && (value < 0 || value > 255)) {
          throw WriteException(
            'Record $recordIndex, field $fieldIndex: byte value $value out of range [0, 255]',
          );
        }
        break;
      case DbcFieldFormat.float:
        if (value is! num) {
          throw WriteException(
            'Record $recordIndex, field $fieldIndex: expected num (int or double), got ${value.runtimeType}',
          );
        }
        break;
      case DbcFieldFormat.string:
        if (value is! String) {
          throw WriteException(
            'Record $recordIndex, field $fieldIndex: expected String, got ${value.runtimeType}',
          );
        }
        break;
      case DbcFieldFormat.logic:
        if (value is! bool) {
          throw WriteException(
            'Record $recordIndex, field $fieldIndex: expected bool, got ${value.runtimeType}',
          );
        }
        break;
      case DbcFieldFormat.na:
      case DbcFieldFormat.naByte:
      case DbcFieldFormat.sort:
        // 跳过字段，不验证
        break;
    }
  }

  /// 编码单条记录
  Uint8List _encodeRecord(
    List<dynamic> record,
    StringTableBuilder stringTableBuilder,
  ) {
    final bytes = ByteData(_fieldOffsets.recordSize);

    for (int i = 0; i < _fieldCount; i++) {
      final offset = _fieldOffsets[i];
      final format = DbcFieldFormat.fromChar(_format[i]);
      final value = record[i];

      switch (format) {
        case DbcFieldFormat.byte:
          bytes.setUint8(offset, value as int);
          break;
        case DbcFieldFormat.intType:
        case DbcFieldFormat.indexField:
          bytes.setInt32(offset, value as int, Endian.little);
          break;
        case DbcFieldFormat.float:
          bytes.setFloat32(offset, (value as num).toDouble(), Endian.little);
          break;
        case DbcFieldFormat.string:
          final stringOffset = stringTableBuilder.addString(value as String);
          bytes.setInt32(offset, stringOffset, Endian.little);
          break;
        case DbcFieldFormat.na:
        case DbcFieldFormat.naByte:
        case DbcFieldFormat.sort:
          // 跳过字段，保持为 0
          break;
        case DbcFieldFormat.logic:
          bytes.setInt32(offset, (value as bool) ? 1 : 0, Endian.little);
          break;
      }
    }

    return bytes.buffer.asUint8List();
  }

  /// 静态方法：写入文件
  ///
  /// [path] - 输出文件路径
  /// [format] - 格式字符串
  /// [records] - 记录列表
  static void writeToPath(
    String path,
    String format,
    List<List<dynamic>> records,
  ) {
    final writer = DbcWriter(path, format);
    writer.write(records);
  }

  /// 静态方法：异步写入文件
  static Future<void> writeToPathAsync(
    String path,
    String format,
    List<List<dynamic>> records,
  ) async {
    final writer = DbcWriter(path, format);
    await writer.writeAsync(records);
  }

  /// 从现有 DbcLoader 复制并修改后写入
  ///
  /// [sourcePath] - 源文件路径
  /// [sourceFormat] - 源文件格式字符串
  /// [modify] - 修改函数，接收源记录，返回新记录
  /// [outputPath] - 输出文件路径
  static void copyWithModify(
    String sourcePath,
    String sourceFormat,
    String outputPath,
    List<dynamic> Function(DbcRecord source) modify,
  ) {
    final sourceLoader = DbcLoader(sourcePath);
    sourceLoader.load(sourceFormat);

    final records = <List<dynamic>>[];
    for (final record in sourceLoader.records) {
      records.add(modify(record));
    }

    final writer = DbcWriter(outputPath, sourceFormat);
    writer.write(records);

    sourceLoader.close();
  }

  @override
  String toString() {
    return 'DbcWriter(path: $_path, format: $_format, fields: $_fieldCount)';
  }
}
