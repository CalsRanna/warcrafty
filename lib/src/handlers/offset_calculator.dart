import 'package:warcrafty/src/core/field_format.dart';
import 'package:warcrafty/src/utils/exceptions.dart';

/// 字段偏移量计算器
///
/// 根据格式字符串计算每个字段在记录中的字节偏移量。
/// 1 字节字段 (byte) 占 1 字节，4 字节字段 (int, float, string) 占 4 字节。
final class FieldOffsetCalculator {
  final String _format;
  late final List<int> _offsets;

  /// 创建偏移量计算器
  ///
  /// [format] - 格式字符串，如 'niiiiss'
  FieldOffsetCalculator(String format) : _format = format {
    _validateFormat();
    _calculateOffsets();
  }

  void _validateFormat() {
    for (int i = 0; i < _format.length; i++) {
      final char = _format[i];
      try {
        DbcFieldFormat.fromChar(char);
      } on DbcException {
        throw FormatException(
          'Invalid format character: "$char" at position $i',
        );
      }
    }
  }

  void _calculateOffsets() {
    _offsets = List.filled(_format.length, 0);

    if (_format.isEmpty) return;

    _offsets[0] = 0;

    for (int i = 1; i < _format.length; i++) {
      final prevFormat = DbcFieldFormat.fromChar(_format[i - 1]);
      _offsets[i] = _offsets[i - 1] + prevFormat.size;
    }
  }

  /// 获取格式字符串
  String get format => _format;

  /// 获取字段数量
  int get fieldCount => _format.length;

  /// 获取总记录大小 (字节)
  int get recordSize {
    if (_format.isEmpty) return 0;
    final lastFormat = DbcFieldFormat.fromChar(_format[_format.length - 1]);
    return _offsets.last + lastFormat.size;
  }

  /// 获取指定索引的字段偏移量
  ///
  /// [index] - 字段索引 (0-based)
  /// 返回该字段在记录中的字节偏移量
  int operator [](int index) {
    if (index < 0 || index >= _format.length) {
      throw FieldIndexOutOfRangeException(index, _format.length);
    }
    return _offsets[index];
  }

  /// 获取所有字段的偏移量列表
  List<int> get all => List.unmodifiable(_offsets);

  /// 获取指定格式字符的索引列表
  ///
  /// [format] - 要查找的格式字符
  /// 返回所有匹配该格式字符的字段索引
  List<int> indicesOf(DbcFieldFormat format) {
    final indices = <int>[];
    for (int i = 0; i < _format.length; i++) {
      if (DbcFieldFormat.fromChar(_format[i]) == format) {
        indices.add(i);
      }
    }
    return indices;
  }

  /// 查找索引字段的位置 (FT_IND = 'n')
  ///
  /// 返回索引字段的索引位置，如果不存在返回 -1
  int get indexField {
    return _format.indexOf(DbcFieldFormat.indexField.char);
  }

  /// 检查是否存在索引字段
  bool get hasIndexField => indexField >= 0;

  /// 获取字段的类型
  ///
  /// [index] - 字段索引
  DbcFieldFormat getFieldType(int index) {
    return DbcFieldFormat.fromChar(_format[index]);
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! FieldOffsetCalculator) return false;
    return _format == other._format;
  }

  @override
  int get hashCode => _format.hashCode;

  @override
  String toString() {
    final offsetsStr = _offsets.join(', ');
    return 'FieldOffsetCalculator(format: "$_format", offsets: [$offsetsStr], recordSize: $recordSize)';
  }
}
