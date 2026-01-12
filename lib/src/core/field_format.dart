/// DBC 字段格式枚举
///
/// 与 AzerothCore DBCfmt.h 保持一致:
/// - 'x': FT_NA - 未知/跳过 (4字节)
/// - 'X': FT_NA_BYTE - 未知字节 (1字节)
/// - 's': FT_STRING - 字符串偏移量
/// - 'f': FT_FLOAT - 浮点数
/// - 'i': FT_INT - 32位整数
/// - 'b': FT_BYTE - 8位整数
/// - 'd': FT_SORT - 排序字段 (不包含在数据中)
/// - 'n': FT_IND - 索引字段 (ID)
/// - 'l': FT_LOGIC - 布尔值
enum DbcFieldFormat {
  na('x'), // not used or unknown, 4 byte
  naByte('X'), // not used or unknown, 1 byte
  string('s'), // char* (字符串偏移量)
  float('f'), // float
  intType('i'), // uint32 - renamed to avoid conflict
  byte('b'), // uint8
  sort('d'), // sorted by this field, not included in data
  indexField('n'), // the same, but parsed to data (ID field) - renamed
  logic('l') // logical (boolean)
  ;

  final String char;
  const DbcFieldFormat(this.char);

  /// 根据字符获取对应的格式枚举
  static DbcFieldFormat fromChar(String char) {
    return values.firstWhere(
      (e) => e.char == char,
      orElse: () => throw FormatException('Unknown field format: $char'),
    );
  }

  /// 获取字段大小 (字节)
  int get size {
    return switch (this) {
      DbcFieldFormat.byte || DbcFieldFormat.naByte => 1,
      _ => 4, // intType, float, string, na, sort, indexField, logic
    };
  }
}

/// 判断是否为字符串字段
extension IsString on DbcFieldFormat {
  bool get isString => this == DbcFieldFormat.string;
}

/// 判断是否为索引字段
extension IsIndex on DbcFieldFormat {
  bool get isIndex => this == DbcFieldFormat.indexField;
}

/// 判断是否为跳过字段
extension IsSkip on DbcFieldFormat {
  bool get isSkip => this == DbcFieldFormat.na || this == DbcFieldFormat.naByte;
}
