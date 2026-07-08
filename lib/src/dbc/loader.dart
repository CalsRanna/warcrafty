import 'dart:io';
import 'dart:typed_data';

import 'package:warcrafty/src/dbc/record.dart';
import 'package:warcrafty/src/internal/string_block_reader.dart';

import '../internal/header.dart';
import '../internal/offset.dart';
import '../internal/exception.dart';
import '../internal/field.dart';

/// DBC 文件加载器
final class DbcLoader {
  final String _path;
  final String _format;
  final DbcFormatDialect _dialect;
  final DbcHeader header;
  final Uint8List data;
  final FieldOffsets offsets;
  final StringBlockReader strings;

  /// 私有构造函数
  DbcLoader._(
    this._path,
    this._format,
    this._dialect,
    this.header,
    this.data,
    this.offsets,
    this.strings,
  );

  /// 从文件路径同步加载
  factory DbcLoader(
    String path,
    String format, {
    DbcFormatDialect dialect = DbcFormatDialect.warcrafty,
  }) {
    final offsets = FieldOffsets(format, dialect: dialect);
    final file = File(path).openSync();
    try {
      return _load(path, format, dialect, offsets, file);
    } finally {
      file.closeSync();
    }
  }

  /// 从文件路径异步加载
  static Future<DbcLoader> loadAsync(
    String path,
    String format, {
    DbcFormatDialect dialect = DbcFormatDialect.warcrafty,
  }) async {
    final offsets = FieldOffsets(format, dialect: dialect);
    final file = await File(path).open();
    try {
      return await _loadAsync(path, format, dialect, offsets, file);
    } finally {
      await file.close();
    }
  }

  /// 从字节数据加载
  factory DbcLoader.fromBytes(
    Uint8List bytes,
    String format, {
    String path = '',
    DbcFormatDialect dialect = DbcFormatDialect.warcrafty,
  }) {
    final offsets = FieldOffsets(format, dialect: dialect);
    final header = DbcHeader.fromBytes(bytes);
    _validateHeader(header, offsets, format);

    final dataStart = DbcHeader.size;
    final recordDataSize = _recordDataSize(header);
    final recordEnd = dataStart + recordDataSize;
    final expectedSize = recordEnd + header.stringBlockSize;

    if (bytes.length < expectedSize) {
      throw FileReadException(
        'DBC data too short: ${bytes.length} bytes (expected at least $expectedSize)',
      );
    }

    final data = bytes.sublist(dataStart, recordEnd);
    final strings = StringBlockReader(bytes.sublist(recordEnd, expectedSize));

    return DbcLoader._(path, format, dialect, header, data, offsets, strings);
  }

  static DbcLoader _load(
    String path,
    String format,
    DbcFormatDialect dialect,
    FieldOffsets offsets,
    RandomAccessFile file,
  ) {
    final header = DbcHeader.fromBytes(file.readSync(DbcHeader.size));
    _validateHeader(header, offsets, format);

    final dataSize = _dataSize(header);
    final remaining = file.lengthSync() - DbcHeader.size;
    if (remaining < dataSize) {
      throw FileReadException(
        'DBC file too short: $remaining data bytes (expected $dataSize)',
      );
    }

    final bytes = file.readSync(dataSize);
    if (bytes.length != dataSize) {
      throw FileReadException(
        'Failed to read DBC data: ${bytes.length} bytes read (expected $dataSize)',
      );
    }

    final recordEnd = _recordDataSize(header);
    final data = bytes.sublist(0, recordEnd);
    final strings = StringBlockReader(bytes.sublist(recordEnd, dataSize));

    return DbcLoader._(path, format, dialect, header, data, offsets, strings);
  }

  static Future<DbcLoader> _loadAsync(
    String path,
    String format,
    DbcFormatDialect dialect,
    FieldOffsets offsets,
    RandomAccessFile file,
  ) async {
    final header = DbcHeader.fromBytes(await file.read(DbcHeader.size));
    _validateHeader(header, offsets, format);

    final dataSize = _dataSize(header);
    final remaining = await file.length() - DbcHeader.size;
    if (remaining < dataSize) {
      throw FileReadException(
        'DBC file too short: $remaining data bytes (expected $dataSize)',
      );
    }

    final bytes = await file.read(dataSize);
    if (bytes.length != dataSize) {
      throw FileReadException(
        'Failed to read DBC data: ${bytes.length} bytes read (expected $dataSize)',
      );
    }

    final recordEnd = _recordDataSize(header);
    final data = bytes.sublist(0, recordEnd);
    final strings = StringBlockReader(bytes.sublist(recordEnd, dataSize));

    return DbcLoader._(path, format, dialect, header, data, offsets, strings);
  }

  static void _validateHeader(
    DbcHeader header,
    FieldOffsets offsets,
    String format,
  ) {
    if (header.fieldCount != format.length) {
      throw DbcFormatException(
        'Field count mismatch: header=${header.fieldCount}, format=${format.length}',
      );
    }
    if (header.recordSize != offsets.recordSize) {
      throw DbcFormatException(
        'Record size mismatch: header=${header.recordSize}, format=${offsets.recordSize}',
      );
    }
  }

  static int _recordDataSize(DbcHeader header) =>
      header.recordSize * header.recordCount;

  static int _dataSize(DbcHeader header) =>
      _recordDataSize(header) + header.stringBlockSize;

  /// 记录数量
  int get recordCount => header.recordCount;

  /// 字段数量
  int get fieldCount => header.fieldCount;

  /// 格式字符串
  String get format => _format;

  /// 格式字符串方言
  DbcFormatDialect get dialect => _dialect;

  /// 获取指定索引的记录
  DbcRecord getRecord(int index) {
    if (index < 0 || index >= header.recordCount) {
      throw RecordIndexOutOfRangeException(index, header.recordCount);
    }

    final recordOffset = header.recordSize * index;
    final recordData = ByteData.sublistView(
      data,
      recordOffset,
      recordOffset + header.recordSize,
    );

    return DbcRecord(
      index: index,
      data: recordData,
      offsets: offsets,
      strings: strings,
    );
  }

  /// 迭代所有记录
  Iterable<DbcRecord> get records sync* {
    for (int i = 0; i < header.recordCount; i++) {
      yield getRecord(i);
    }
  }

  /// 转换为 Map 列表
  List<Map<String, dynamic>> toMapList() =>
      records.map((r) => r.toMap()).toList();

  @override
  String toString() =>
      'DbcLoader($_path, records: ${header.recordCount}, fields: ${header.fieldCount})';
}
