import '../../core/field_format.dart';

/// 字段定义
///
/// 包含单个字段的完整描述信息：索引、名称、描述和格式类型。
final class FieldDefinition {
  /// 字段索引
  final int index;

  /// 字段名称
  final String name;

  /// 字段描述
  final String description;

  /// 字段格式类型
  final DbcFieldFormat format;

  const FieldDefinition({
    required this.index,
    required this.name,
    required this.description,
    required this.format,
  });

  @override
  String toString() {
    return 'FieldDefinition(index: $index, name: $name, format: ${format.char})';
  }
}

/// 字段定义构建器
///
/// 用于简化创建字段定义的辅助类。
final class FieldDefinitionBuilder {
  final List<FieldDefinition> _fields = [];

  FieldDefinitionBuilder add(
    int index,
    String name,
    DbcFieldFormat format, {
    required String description,
  }) {
    _fields.add(FieldDefinition(
      index: index,
      name: name,
      format: format,
      description: description,
    ));
    return this;
  }

  List<FieldDefinition> build() => List.unmodifiable(_fields);
}
