/// 字段类型枚举
///
/// 定义 DBC 文件中支持的字段类型。
enum FieldType {
  /// 未使用或未知字段 (4 字节)
  unused('x'),

  /// 未使用或未知字段 (1 字节)
  unusedByte('X'),

  /// 字符串偏移量 (4 字节)
  string('s'),

  /// 浮点数 (4 字节)
  float('f'),

  /// 32位有符号整数 (4 字节)
  int32('i'),

  /// 8位无符号整数 (1 字节)
  uint8('b'),

  /// 排序字段，不包含在数据中 (4 字节)
  sort('d'),

  /// 索引字段/ID 字段 (4 字节)
  id('n'),

  /// 布尔值 (4 字节)
  boolean('l'),
  ;

  /// 格式字符
  final String char;

  const FieldType(this.char);

  /// 根据字符获取对应的类型
  static FieldType fromChar(String char) {
    return values.firstWhere(
      (e) => e.char == char,
      orElse: () => throw FormatException('Unknown field type: $char'),
    );
  }

  /// 获取字段大小 (字节)
  int get size {
    return switch (this) {
      FieldType.uint8 || FieldType.unusedByte => 1,
      _ => 4,
    };
  }

  /// 是否为字符串字段
  bool get isString => this == FieldType.string;

  /// 是否为索引字段
  bool get isId => this == FieldType.id;

  /// 是否为跳过字段
  bool get isSkip => this == FieldType.unused || this == FieldType.unusedByte;
}

/// 字段定义
///
/// 包含单个字段的完整描述信息。
final class Field {
  /// 字段索引
  final int index;

  /// 字段名称
  final String name;

  /// 字段描述
  final String description;

  /// 字段类型
  final FieldType type;

  const Field({
    required this.index,
    required this.name,
    required this.description,
    required this.type,
  });

  @override
  String toString() => 'Field($index: $name, ${type.char})';
}
