/// 字符串块处理器
///
/// 处理 DBC 文件中的字符串表，提供 O(1) 时间复杂度的字符串查找。
/// 在初始化时预构建偏移量到字符串的映射，避免每次读取字符串时的线性扫描。
library;

import 'dart:convert';
import 'dart:typed_data';

/// 字符串块处理器
///
/// 字符串表是 DBC 文件末尾的一个连续区域，包含以 null 结尾的 UTF-8 字符串。
/// 每个字符串字段存储的是相对于字符串表起始位置的偏移量。
///
/// 优化策略:
/// - 预构建偏移量到字符串的映射
/// - 使用字典实现 O(1) 查找
/// - 支持空字符串的特殊处理 (偏移量 0)
final class StringBlockHandler {
  final Uint8List _stringBlock;
  final Map<int, String> _stringCache;
  final int _baseOffset;

  /// 创建字符串块处理器
  ///
  /// [stringBlock] - 字符串表数据
  /// [baseOffset] - 字符串表相对于文件起始位置的偏移量 (默认为 0)
  StringBlockHandler(Uint8List stringBlock, [this._baseOffset = 0])
    : _stringBlock = stringBlock,
      _stringCache = {} {
    _buildIndex();
  }

  /// 构建字符串索引
  ///
  /// 扫描字符串表，建立偏移量到字符串的映射
  void _buildIndex() {
    var offset = 0;

    // 偏移量 0 保留为空字符串
    _stringCache[0] = '';

    while (offset < _stringBlock.length) {
      if (_stringBlock[offset] == 0) {
        offset++;
        continue;
      }

      final start = offset;
      while (offset < _stringBlock.length && _stringBlock[offset] != 0) {
        offset++;
      }

      if (offset > start) {
        final str = utf8.decode(_stringBlock.sublist(start, offset));
        _stringCache[start] = str;
      }
    }
  }

  /// 读取字符串
  ///
  /// [offset] - 字符串在字符串表中的偏移量
  /// 返回对应的字符串，如果偏移量无效返回空字符串
  String readString(int offset) {
    if (offset < 0 || offset >= _stringBlock.length) {
      return '';
    }
    return _stringCache[offset] ?? '';
  }

  /// 检查偏移量是否有效
  bool isValidOffset(int offset) {
    return offset >= 0 && offset < _stringBlock.length;
  }

  /// 获取字符串表大小
  int get size => _stringBlock.length;

  /// 获取字符串数量
  int get count => _stringCache.length;

  /// 获取所有字符串
  List<String> get allStrings => List.unmodifiable(_stringCache.values);

  /// 获取所有偏移量
  List<int> get allOffsets =>
      List.unmodifiable(_stringCache.keys.toList()..sort());

  /// 批量读取字符串
  ///
  /// [offsets] - 偏移量列表
  /// 返回对应的字符串列表
  List<String> readStrings(Iterable<int> offsets) {
    return offsets.map(readString).toList();
  }

  /// 获取字符串在文件中的绝对偏移量
  ///
  /// [stringOffset] - 字符串在字符串表中的偏移量
  int getAbsoluteOffset(int stringOffset) => _baseOffset + stringOffset;

  @override
  String toString() {
    return 'StringBlockHandler(size: $size, count: $count)';
  }
}

/// 字符串表构建器
///
/// 用于写入 DBC 文件时构建字符串表。
/// 包含字符串去重功能以减少文件大小。
final class StringTableBuilder {
  final Map<String, int> _stringOffsets = {};
  final List<String> _strings = [];
  int _currentOffset = 0;

  /// 创建字符串表构建器
  StringTableBuilder() {
    // 偏移量 0 保留为空字符串
    _stringOffsets[''] = 0;
    _currentOffset = 1;
  }

  /// 添加字符串
  ///
  /// 如果字符串已存在，返回已有的偏移量；否则添加新字符串并返回新偏移量
  int addString(String str) {
    if (_stringOffsets.containsKey(str)) {
      return _stringOffsets[str]!;
    }

    final offset = _currentOffset;
    _stringOffsets[str] = offset;
    _strings.add(str);

    // 更新当前偏移量 (字符串长度 + null 结尾)
    _currentOffset += utf8.encode(str).length + 1;
    return offset;
  }

  /// 批量添加字符串
  void addStrings(Iterable<String> strings) {
    for (final str in strings) {
      addString(str);
    }
  }

  /// 构建字符串表字节数据
  ///
  /// 返回包含所有字符串的字节数组 (以 null 结尾)
  Uint8List build() {
    final builder = BytesBuilder();
    builder.addByte(0); // 偏移量 0 为空字符串

    for (final str in _strings) {
      builder.add(utf8.encode(str));
      builder.addByte(0); // null 结尾
    }

    return builder.takeBytes();
  }

  /// 获取字符串数量
  int get count => _stringOffsets.length;

  /// 获取字符串表大小
  int get size => build().length;

  /// 获取所有字符串
  List<String> get strings => List.unmodifiable(_strings);

  /// 获取字符串偏移量映射
  Map<String, int> get offsetMap => Map.unmodifiable(_stringOffsets);

  @override
  String toString() {
    return 'StringTableBuilder(count: $count, size: $size)';
  }
}
