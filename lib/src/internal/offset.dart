import 'field.dart';
import 'exception.dart';

/// 字段偏移量计算器
///
/// 根据格式字符串计算每个字段在记录中的字节偏移量。
final class FieldOffsets {
  final String _format;
  late final List<int> _offsets;

  /// 创建偏移量计算器
  FieldOffsets(String format) : _format = format {
    _validate();
    _calculate();
  }

  void _validate() {
    for (int i = 0; i < _format.length; i++) {
      final char = _format[i];
      try {
        FieldType.fromChar(char);
      } on DbcException {
        throw FormatException(
          'Invalid format character: "$char" at position $i',
        );
      }
    }
  }

  void _calculate() {
    _offsets = List.filled(_format.length, 0);
    if (_format.isEmpty) return;

    _offsets[0] = 0;
    for (int i = 1; i < _format.length; i++) {
      final prevType = FieldType.fromChar(_format[i - 1]);
      _offsets[i] = _offsets[i - 1] + prevType.size;
    }
  }

  /// 格式字符串
  String get format => _format;

  /// 字段数量
  int get fieldCount => _format.length;

  /// 总记录大小 (字节)
  int get recordSize {
    if (_format.isEmpty) return 0;
    final lastType = FieldType.fromChar(_format[_format.length - 1]);
    return _offsets.last + lastType.size;
  }

  /// 获取指定索引的字段偏移量
  int operator [](int index) {
    if (index < 0 || index >= _format.length) {
      throw FieldIndexOutOfRangeException(index, _format.length);
    }
    return _offsets[index];
  }

  /// 所有字段的偏移量列表
  List<int> get all => List.unmodifiable(_offsets);

  /// 获取指定类型的字段索引列表
  List<int> indicesOf(FieldType type) {
    final indices = <int>[];
    for (int i = 0; i < _format.length; i++) {
      if (FieldType.fromChar(_format[i]) == type) {
        indices.add(i);
      }
    }
    return indices;
  }

  /// 索引字段的位置，不存在返回 -1
  int get indexField => _format.indexOf(FieldType.id.char);

  /// 是否存在索引字段
  bool get hasIndexField => indexField >= 0;

  /// 获取字段的类型
  FieldType getFieldType(int index) => FieldType.fromChar(_format[index]);

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! FieldOffsets) return false;
    return _format == other._format;
  }

  @override
  int get hashCode => _format.hashCode;

  @override
  String toString() => 'FieldOffsets($_format, size: $recordSize)';
}
