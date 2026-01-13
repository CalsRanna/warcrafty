import 'dart:typed_data';
import 'package:warcrafty/src/dbc/loader.dart';
import 'package:warcrafty/src/schema/field.dart';
import 'package:warcrafty/src/util/exception.dart';

/// DBC 记录访问器
final class DbcRecord {
  final DbcLoader _loader;
  final int _recordIndex;
  late final int _recordOffset;
  late final ByteData _recordData;

  DbcRecord(this._loader, this._recordIndex) {
    _recordOffset = _loader.header.recordSize * _recordIndex;
    _recordData = ByteData.sublistView(
      _loader.data,
      _recordOffset,
      _recordOffset + _loader.header.recordSize,
    );
  }

  /// 记录索引
  int get index => _recordIndex;

  /// 读取 32 位有符号整数
  int getInt(int field) {
    final offset = _loader.offsets[field];
    return _recordData.getInt32(offset, Endian.little);
  }

  /// 读取 32 位无符号整数
  int getUint(int field) {
    final offset = _loader.offsets[field];
    return _recordData.getUint32(offset, Endian.little);
  }

  /// 读取 8 位有符号整数
  int getInt8(int field) {
    final offset = _loader.offsets[field];
    return _recordData.getInt8(offset);
  }

  /// 读取 8 位无符号整数
  int getUint8(int field) {
    final offset = _loader.offsets[field];
    return _recordData.getUint8(offset);
  }

  /// 读取浮点数
  double getFloat(int field) {
    final offset = _loader.offsets[field];
    return _recordData.getFloat32(offset, Endian.little);
  }

  /// 读取字符串
  String getString(int field) {
    final offset = _loader.offsets[field];
    final stringOffset = _recordData.getUint32(offset, Endian.little);
    return _loader.strings.read(stringOffset);
  }

  /// 读取原始字节
  Uint8List getBytes(int field, int length) {
    final offset = _loader.offsets[field];
    final endOffset = offset + length;
    if (endOffset > _loader.header.recordSize) {
      throw FormatException('Field data exceeds record size');
    }
    return _loader.data.sublist(
      _recordOffset + offset,
      _recordOffset + endOffset,
    );
  }

  /// 转换为 Map
  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    for (int i = 0; i < _loader.header.fieldCount; i++) {
      final type = _loader.offsets.getFieldType(i);
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
