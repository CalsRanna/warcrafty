/// 列定义，描述字段的类型信息
class ColumnDef {
  /// 类型: int, float, string, locstring
  final String type;

  /// 字段名
  final String name;

  /// 外键引用 (如 <Item::ID>)
  final String? foreignRef;

  /// 带 ? 标记的不确定字段
  final bool isUncertain;

  ColumnDef({
    required this.type,
    required this.name,
    this.foreignRef,
    this.isUncertain = false,
  });
}
