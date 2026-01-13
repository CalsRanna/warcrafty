import 'dart:convert';
import 'dart:typed_data';

/// 字符串块读取器
///
/// 处理 DBC 文件末尾的字符串表，支持 O(1) 查找。
final class StringBlockReader {
  final Uint8List _data;
  final Map<int, String> _cache = {};

  StringBlockReader(this._data) {
    _buildIndex();
  }

  void _buildIndex() {
    var offset = 0;
    _cache[0] = '';

    while (offset < _data.length) {
      if (_data[offset] == 0) {
        offset++;
        continue;
      }

      final start = offset;
      while (offset < _data.length && _data[offset] != 0) {
        offset++;
      }

      if (offset > start) {
        _cache[start] = utf8.decode(_data.sublist(start, offset));
      }
    }
  }

  /// 读取字符串
  String read(int offset) {
    if (offset < 0 || offset >= _data.length) return '';
    return _cache[offset] ?? '';
  }

  /// 检查偏移量是否有效
  bool isValidOffset(int offset) => offset >= 0 && offset < _data.length;

  /// 字符串表大小
  int get size => _data.length;

  /// 字符串数量
  int get count => _cache.length;

  /// 所有字符串
  List<String> get all => List.unmodifiable(_cache.values);

  @override
  String toString() => 'StringBlock(size: $size, count: $count)';
}
