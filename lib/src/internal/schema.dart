import 'field.dart';

/// DBC 结构定义
///
/// 包含字段的完整描述信息，用于语义化访问 DBC 文件数据。
final class DbcSchema {
  /// 结构名称
  final String name;

  /// 格式字符串
  final String format;

  /// 格式字符串方言
  final DbcFormatDialect dialect;

  /// 字段定义列表
  final List<Field> fields;

  const DbcSchema({
    required this.name,
    required this.format,
    this.dialect = DbcFormatDialect.warcrafty,
    required this.fields,
  });

  /// 获取字段数量
  int get fieldCount => format.length;

  /// 获取记录大小 (字节)
  int get recordSize {
    if (format.isEmpty) return 0;
    var total = 0;
    for (var i = 0; i < format.length; i++) {
      total += FieldType.fromChar(format[i], dialect: dialect).size;
    }
    return total;
  }

  /// 通过名称查找字段
  Field? getFieldByName(String name) {
    for (final f in fields) {
      if (f.name == name) return f;
    }
    return null;
  }

  /// 通过索引查找字段
  Field? getFieldByIndex(int index) {
    for (final f in fields) {
      if (f.index == index) return f;
    }
    return null;
  }

  @override
  String toString() => 'DbcSchema($name, fields: $fieldCount)';
}
