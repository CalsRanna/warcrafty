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
