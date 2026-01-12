import 'dart:io';
import 'dart:typed_data';

import '../schema/field.dart';
import '../internal/header.dart';
import '../internal/offsets.dart';
import '../internal/strings.dart';
import '../utils/exceptions.dart';

/// DBC 记录访问器
final class DbcRecord {
  final DbcLoader _loader;
  final int _recordIndex;
  late final int _recordOffset;
  late final ByteData _recordData;

  DbcRecord._(this._loader, this._recordIndex) {
    _recordOffset = _loader._header.recordSize * _recordIndex;
    _recordData = ByteData.sublistView(
      _loader._data,
      _recordOffset,
      _recordOffset + _loader._header.recordSize,
    );
  }

  /// 记录索引
  int get index => _recordIndex;

  /// 读取 32 位有符号整数
  int getInt(int field) {
    final offset = _loader._offsets[field];
    return _recordData.getInt32(offset, Endian.little);
  }

  /// 读取 32 位无符号整数
  int getUint(int field) {
    final offset = _loader._offsets[field];
    return _recordData.getUint32(offset, Endian.little);
  }

  /// 读取 8 位有符号整数
  int getInt8(int field) {
    final offset = _loader._offsets[field];
    return _recordData.getInt8(offset);
  }

  /// 读取 8 位无符号整数
  int getUint8(int field) {
    final offset = _loader._offsets[field];
    return _recordData.getUint8(offset);
  }

  /// 读取浮点数
  double getFloat(int field) {
    final offset = _loader._offsets[field];
    return _recordData.getFloat32(offset, Endian.little);
  }

  /// 读取字符串
  String getString(int field) {
    final offset = _loader._offsets[field];
    final stringOffset = _recordData.getUint32(offset, Endian.little);
    return _loader._strings.read(stringOffset);
  }

  /// 读取原始字节
  Uint8List getBytes(int field, int length) {
    final offset = _loader._offsets[field];
    final endOffset = offset + length;
    if (endOffset > _loader._header.recordSize) {
      throw FormatException('Field data exceeds record size');
    }
    return _loader._data.sublist(
      _recordOffset + offset,
      _recordOffset + endOffset,
    );
  }

  /// 转换为 Map
  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    for (int i = 0; i < _loader._header.fieldCount; i++) {
      final type = _loader._offsets.getFieldType(i);
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

/// DBC 文件加载器
final class DbcLoader {
  final String _path;
  final RandomAccessFile _file;

  late final DbcHeader _header;
  late final Uint8List _data;
  late final String _format;
  late final FieldOffsets _offsets;
  late final StringBlock _strings;

  bool _isLoaded = false;

  /// 创建加载器
  DbcLoader(this._path) : _file = File(_path).openSync();

  /// 从文件创建加载器
  DbcLoader.fromFile(this._file) : _path = _file.path;

  /// 同步加载
  void load(String format) {
    if (_isLoaded) return;

    _format = format;
    _header = DbcHeader.fromBytes(_file.readSync(DbcHeader.size));

    if (_header.fieldCount != format.length) {
      throw FormatException(
        'Field count mismatch: header=${_header.fieldCount}, format=${format.length}',
      );
    }

    _offsets = FieldOffsets(format);
    _readData();
    _isLoaded = true;
  }

  /// 异步加载
  Future<void> loadAsync(String format) async {
    if (_isLoaded) return;

    _format = format;
    _header = DbcHeader.fromBytes(await _file.read(DbcHeader.size));

    if (_header.fieldCount != format.length) {
      throw FormatException(
        'Field count mismatch: header=${_header.fieldCount}, format=${format.length}',
      );
    }

    _offsets = FieldOffsets(format);
    await _readDataAsync();
    _isLoaded = true;
  }

  void _readData() {
    final dataSize = _header.recordSize * _header.recordCount + _header.stringBlockSize;
    final bytes = _file.readSync(dataSize);
    final recordEnd = _header.recordSize * _header.recordCount;

    _data = bytes.sublist(0, recordEnd);
    _strings = StringBlock(bytes.sublist(recordEnd));
  }

  Future<void> _readDataAsync() async {
    final dataSize = _header.recordSize * _header.recordCount + _header.stringBlockSize;
    final bytes = await _file.read(dataSize);
    final recordEnd = _header.recordSize * _header.recordCount;

    _data = bytes.sublist(0, recordEnd);
    _strings = StringBlock(bytes.sublist(recordEnd));
  }

  /// 记录数量
  int get recordCount => _header.recordCount;

  /// 字段数量
  int get fieldCount => _header.fieldCount;

  /// 格式字符串
  String get format => _format;

  /// 字段偏移量
  FieldOffsets get fieldOffsets => _offsets;

  /// 获取指定索引的记录
  DbcRecord getRecord(int index) {
    if (index < 0 || index >= _header.recordCount) {
      throw RecordIndexOutOfRangeException(index, _header.recordCount);
    }
    return DbcRecord._(this, index);
  }

  /// 迭代所有记录
  Iterable<DbcRecord> get records sync* {
    for (int i = 0; i < _header.recordCount; i++) {
      yield getRecord(i);
    }
  }

  /// 转换为 Map 列表
  List<Map<String, dynamic>> toMapList() =>
      records.map((r) => r.toMap()).toList();

  /// 关闭文件
  void close() => _file.closeSync();

  /// 异步关闭
  Future<void> closeAsync() => _file.close();

  /// 从路径加载
  static DbcLoader loadFromPath(String path, String format) {
    final loader = DbcLoader(path);
    loader.load(format);
    return loader;
  }

  /// 从路径异步加载
  static Future<DbcLoader> loadFromPathAsync(String path, String format) async {
    final loader = DbcLoader(path);
    await loader.loadAsync(format);
    return loader;
  }

  @override
  String toString() =>
      'DbcLoader($_path, records: ${_header.recordCount}, fields: ${_header.fieldCount})';
}
