import 'dart:io';
import 'dart:typed_data';

import 'package:warcrafty/src/dbc/record.dart';

import '../internal/header.dart';
import '../internal/offset.dart';
import '../internal/string.dart';
import '../util/exception.dart';

/// DBC 文件加载器
final class DbcLoader {
  final String _path;
  final String _format;
  final DbcHeader header;
  final Uint8List data;
  final FieldOffsets offsets;
  final StringBlock strings;

  /// 私有构造函数
  DbcLoader._(
    this._path,
    this._format,
    this.header,
    this.data,
    this.offsets,
    this.strings,
  );

  /// 从文件路径同步加载
  factory DbcLoader(String path, String format) {
    final file = File(path).openSync();
    try {
      return _load(path, format, file);
    } finally {
      file.closeSync();
    }
  }

  /// 从文件路径异步加载
  static Future<DbcLoader> loadAsync(String path, String format) async {
    final file = await File(path).open();
    try {
      return await _loadAsync(path, format, file);
    } finally {
      await file.close();
    }
  }

  /// 从字节数据加载
  factory DbcLoader.fromBytes(
    Uint8List bytes,
    String format, [
    String path = '',
  ]) {
    final header = DbcHeader.fromBytes(bytes.sublist(0, DbcHeader.size));

    if (header.fieldCount != format.length) {
      throw FormatException(
        'Field count mismatch: header=${header.fieldCount}, format=${format.length}',
      );
    }

    final offsets = FieldOffsets(format);
    final dataStart = DbcHeader.size;
    final recordEnd = dataStart + header.recordSize * header.recordCount;

    final data = bytes.sublist(dataStart, recordEnd);
    final strings = StringBlock(bytes.sublist(recordEnd));

    return DbcLoader._(path, format, header, data, offsets, strings);
  }

  static DbcLoader _load(String path, String format, RandomAccessFile file) {
    final header = DbcHeader.fromBytes(file.readSync(DbcHeader.size));

    if (header.fieldCount != format.length) {
      throw FormatException(
        'Field count mismatch: header=${header.fieldCount}, format=${format.length}',
      );
    }

    final offsets = FieldOffsets(format);
    final dataSize =
        header.recordSize * header.recordCount + header.stringBlockSize;
    final bytes = file.readSync(dataSize);
    final recordEnd = header.recordSize * header.recordCount;

    final data = bytes.sublist(0, recordEnd);
    final strings = StringBlock(bytes.sublist(recordEnd));

    return DbcLoader._(path, format, header, data, offsets, strings);
  }

  static Future<DbcLoader> _loadAsync(
    String path,
    String format,
    RandomAccessFile file,
  ) async {
    final header = DbcHeader.fromBytes(await file.read(DbcHeader.size));

    if (header.fieldCount != format.length) {
      throw FormatException(
        'Field count mismatch: header=${header.fieldCount}, format=${format.length}',
      );
    }

    final offsets = FieldOffsets(format);
    final dataSize =
        header.recordSize * header.recordCount + header.stringBlockSize;
    final bytes = await file.read(dataSize);
    final recordEnd = header.recordSize * header.recordCount;

    final data = bytes.sublist(0, recordEnd);
    final strings = StringBlock(bytes.sublist(recordEnd));

    return DbcLoader._(path, format, header, data, offsets, strings);
  }

  /// 记录数量
  int get recordCount => header.recordCount;

  /// 字段数量
  int get fieldCount => header.fieldCount;

  /// 格式字符串
  String get format => _format;

  /// 字段偏移量
  FieldOffsets get fieldOffsets => offsets;

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
