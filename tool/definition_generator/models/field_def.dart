/// 字段定义，描述字段在特定版本中的布局
class FieldDef {
  /// 字段名
  final String name;

  /// 大小标记 (如 `<8>`, `<u8>`)
  final String? size;

  /// 数组大小 [N]
  final int? arraySize;

  /// $id$ 标记
  final bool isId;

  /// $relation$ 标记
  final bool isRelation;

  /// $noninline$ 标记
  final bool isNoninline;

  FieldDef({
    required this.name,
    this.size,
    this.arraySize,
    this.isId = false,
    this.isRelation = false,
    this.isNoninline = false,
  });

  /// 检查字段是否是字节字段 (`<8>` 或 `<u8>`)
  bool get isByteField {
    if (size == null) return false;
    return size == '8' || size == 'u8';
  }
}
