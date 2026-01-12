/// DBC 文件加载器
///
/// 负责读取和解析 DBC 文件，支持格式字符串驱动的灵活解析。
/// 参考 AzerothCore DBCFileLoader 实现。
library;

import 'dart:io';
import 'dart:typed_data';

import '../core/field_format.dart';
import '../core/header.dart';
import '../handlers/offset_calculator.dart';
import '../handlers/string_handler.dart';
import '../utils/exceptions.dart';

/// DBC 文件记录访问器
///
/// 提供对单条记录的字段访问，支持通过索引或字段名访问。
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

  /// 获取记录索引
  int get index => _recordIndex;

  /// 读取 32 位整数
  int getInt(int field) {
    final offset = _loader._fieldOffsets[field];
    return _recordData.getInt32(offset, Endian.little);
  }

  /// 读取无符号 32 位整数
  int getUint(int field) {
    final offset = _loader._fieldOffsets[field];
    return _recordData.getUint32(offset, Endian.little);
  }

  /// 读取 8 位整数
  int getInt8(int field) {
    final offset = _loader._fieldOffsets[field];
    return _recordData.getInt8(offset);
  }

  /// 读取无符号 8 位整数
  int getUint8(int field) {
    final offset = _loader._fieldOffsets[field];
    return _recordData.getUint8(offset);
  }

  /// 读取浮点数
  double getFloat(int field) {
    final offset = _loader._fieldOffsets[field];
    return _recordData.getFloat32(offset, Endian.little);
  }

  /// 读取字符串
  String getString(int field) {
    final offset = _loader._fieldOffsets[field];
    final stringOffset = _recordData.getUint32(offset, Endian.little);
    return _loader._stringHandler.readString(stringOffset);
  }

  /// 读取原始字节数据
  Uint8List getBytes(int field, int length) {
    final offset = _loader._fieldOffsets[field];
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
      final format = _loader._fieldOffsets.getFieldType(i);
      switch (format) {
        case DbcFieldFormat.string:
          map['field_$i'] = getString(i);
        case DbcFieldFormat.float:
          map['field_$i'] = getFloat(i);
        case DbcFieldFormat.intType:
        case DbcFieldFormat.indexField:
          map['field_$i'] = getInt(i);
        case DbcFieldFormat.byte:
          map['field_$i'] = getUint8(i);
        case DbcFieldFormat.na:
        case DbcFieldFormat.naByte:
        case DbcFieldFormat.sort:
          map['field_$i'] = null;
        case DbcFieldFormat.logic:
          map['field_$i'] = getInt(i) != 0;
      }
    }
    return map;
  }
}

/// DBC 文件加载器
///
/// 负责读取和解析 DBC 文件，支持:
/// - 格式字符串驱动的灵活解析
/// - 预建字符串索引 (O(1) 查找)
/// - Record 访问器
final class DbcLoader {
  final String _path;
  final RandomAccessFile _file;

  late final DbcHeader _header;
  late final Uint8List _data;
  late final String _format;
  late final FieldOffsetCalculator _fieldOffsets;
  late final StringBlockHandler _stringHandler;

  bool _isLoaded = false;

  /// 创建 DBC 文件加载器
  ///
  /// [path] - DBC 文件路径
  DbcLoader(this._path) : _file = File(_path).openSync();

  /// 从随机访问文件创建加载器
  DbcLoader.fromFile(this._file) : _path = _file.path;

  /// 加载并解析 DBC 文件
  ///
  /// [format] - 格式字符串，如 'niiiiss'
  void load(String format) {
    if (_isLoaded) return;

    _format = format;

    // 读取文件头
    _readHeader();

    // 验证字段数量
    if (_header.fieldCount != format.length) {
      throw FormatException(
        'Field count mismatch: header says ${_header.fieldCount}, '
        'but format string has ${format.length} fields',
      );
    }

    // 计算字段偏移量
    _fieldOffsets = FieldOffsetCalculator(format);

    // 读取数据和字符串表
    _readData();

    _isLoaded = true;
  }

  /// 异步加载并解析 DBC 文件
  Future<void> loadAsync(String format) async {
    if (_isLoaded) return;

    _format = format;

    // 读取文件头
    await _readHeaderAsync();

    // 验证字段数量
    if (_header.fieldCount != format.length) {
      throw FormatException(
        'Field count mismatch: header says ${_header.fieldCount}, '
        'but format string has ${format.length} fields',
      );
    }

    // 计算字段偏移量
    _fieldOffsets = FieldOffsetCalculator(format);

    // 读取数据和字符串表
    await _readDataAsync();

    _isLoaded = true;
  }

  void _readHeader() {
    final headerBytes = _file.readSync(DbcHeader.size);
    _header = DbcHeader.fromBytes(headerBytes);
  }

  Future<void> _readHeaderAsync() async {
    final headerBytes = await _file.read(DbcHeader.size);
    _header = DbcHeader.fromBytes(headerBytes);
  }

  void _readData() {
    final dataSize =
        _header.recordSize * _header.recordCount + _header.stringBlockSize;
    final bytes = _file.readSync(dataSize);

    _data = bytes.sublist(0, _header.recordSize * _header.recordCount);
    final stringBlock = bytes.sublist(_header.recordSize * _header.recordCount);
    _stringHandler = StringBlockHandler(stringBlock);
  }

  Future<void> _readDataAsync() async {
    final dataSize =
        _header.recordSize * _header.recordCount + _header.stringBlockSize;
    final bytes = await _file.read(dataSize);

    _data = bytes.sublist(0, _header.recordSize * _header.recordCount);
    final stringBlock = bytes.sublist(_header.recordSize * _header.recordCount);
    _stringHandler = StringBlockHandler(stringBlock);
  }

  /// 获取记录数量
  int get recordCount => _header.recordCount;

  /// 获取字段数量
  int get fieldCount => _header.fieldCount;

  /// 获取格式字符串
  String get format => _format;

  /// 获取字段偏移量计算器
  FieldOffsetCalculator get fieldOffsets => _fieldOffsets;

  /// 获取指定索引的记录
  ///
  /// [index] - 记录索引 (0-based)
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
  List<Map<String, dynamic>> toMapList() {
    return records.map((r) => r.toMap()).toList();
  }

  /// 关闭文件
  void close() {
    _file.closeSync();
  }

  /// 异步关闭文件
  Future<void> closeAsync() async {
    await _file.close();
  }

  /// 静态方法：从文件路径加载
  ///
  /// [path] - DBC 文件路径
  /// [format] - 格式字符串
  static DbcLoader loadFromPath(String path, String format) {
    final loader = DbcLoader(path);
    loader.load(format);
    return loader;
  }

  /// 静态方法：从文件路径异步加载
  static Future<DbcLoader> loadFromPathAsync(String path, String format) async {
    final loader = DbcLoader(path);
    await loader.loadAsync(format);
    return loader;
  }

  @override
  String toString() {
    return 'DbcLoader(path: $_path, records: ${_header.recordCount}, '
        'fields: ${_header.fieldCount}, format: $_format)';
  }
}
