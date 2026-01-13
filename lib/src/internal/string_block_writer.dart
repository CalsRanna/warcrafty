import 'dart:convert';
import 'dart:typed_data';

/// 字符串表构建器
///
/// 用于写入 DBC 文件时构建字符串表，支持去重。
final class StringBlockWriter {
  final Map<String, int> _offsets = {};
  final List<String> _strings = [];
  int _currentOffset = 0;

  StringBlockWriter() {
    _offsets[''] = 0;
    _currentOffset = 1;
  }

  /// 添加字符串，返回偏移量
  int add(String str) {
    if (_offsets.containsKey(str)) {
      return _offsets[str]!;
    }

    final offset = _currentOffset;
    _offsets[str] = offset;
    _strings.add(str);
    _currentOffset += utf8.encode(str).length + 1;
    return offset;
  }

  /// 构建字符串表字节数据
  Uint8List build() {
    final builder = BytesBuilder();
    builder.addByte(0);

    for (final str in _strings) {
      builder.add(utf8.encode(str));
      builder.addByte(0);
    }

    return builder.takeBytes();
  }

  /// 字符串数量
  int get count => _offsets.length;

  /// 字符串表大小
  int get size => _currentOffset;

  @override
  String toString() => 'StringTable(count: $count, size: $size)';
}
