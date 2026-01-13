import 'dart:typed_data';

import 'package:warcrafty/src/internal/string_block_reader.dart';

import '../internal/field.dart';
import '../internal/offset.dart';

/// DBC 记录实体
final class DbcRecord {
  /// 记录索引
  final int index;

  final ByteData _data;
  final FieldOffsets _offsets;
  final StringBlockReader _strings;

  /// 创建记录
  DbcRecord({
    required this.index,
    required ByteData data,
    required FieldOffsets offsets,
    required StringBlockReader strings,
  }) : _data = data,
       _offsets = offsets,
       _strings = strings;

  /// 字段数量
  int get fieldCount => _offsets.fieldCount;

  /// 读取 32 位有符号整数
  int getInt(int field) {
    final offset = _offsets[field];
    return _data.getInt32(offset, Endian.little);
  }

  /// 读取 32 位无符号整数
  int getUint(int field) {
    final offset = _offsets[field];
    return _data.getUint32(offset, Endian.little);
  }

  /// 读取 8 位有符号整数
  int getInt8(int field) {
    final offset = _offsets[field];
    return _data.getInt8(offset);
  }

  /// 读取 8 位无符号整数
  int getUint8(int field) {
    final offset = _offsets[field];
    return _data.getUint8(offset);
  }

  /// 读取浮点数
  double getFloat(int field) {
    final offset = _offsets[field];
    return _data.getFloat32(offset, Endian.little);
  }

  /// 读取字符串
  String getString(int field) {
    final offset = _offsets[field];
    final stringOffset = _data.getUint32(offset, Endian.little);
    return _strings.read(stringOffset);
  }

  /// 读取原始字节
  Uint8List getBytes(int field, int length) {
    final offset = _offsets[field];
    final endOffset = offset + length;
    if (endOffset > _data.lengthInBytes) {
      throw FormatException('Field data exceeds record size');
    }
    return _data.buffer.asUint8List(_data.offsetInBytes + offset, length);
  }

  /// 转换为 Map
  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    for (int i = 0; i < _offsets.fieldCount; i++) {
      final type = _offsets.getFieldType(i);
      switch (type) {
        case FieldType.string:
          map['field_$i'] = getString(i);
        case FieldType.float:
          map['field_$i'] = getFloat(i);
        case FieldType.int32:
        case FieldType.id:
          map['field_$i'] = getInt(i);
        case FieldType.uint8:
          map['field_$i'] = getUint8(i);
        case FieldType.unused:
        case FieldType.unusedByte:
        case FieldType.sort:
          map['field_$i'] = null;
        case FieldType.boolean:
          map['field_$i'] = getInt(i) != 0;
      }
    }
    return map;
  }
}
