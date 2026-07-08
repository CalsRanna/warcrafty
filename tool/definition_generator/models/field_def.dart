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

  /// 整数字段宽度，未指定时返回 null。
  int? get intWidth {
    if (size == null) return null;
    final normalized = size!.startsWith('u') ? size!.substring(1) : size!;
    return int.tryParse(normalized);
  }

  /// 整数字段是否是无符号。
  bool get isUnsigned => size?.startsWith('u') ?? false;
}
