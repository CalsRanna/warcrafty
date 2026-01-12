import 'package:warcrafty/src/core/field_format.dart';
import 'field_definition.dart';

/// DBC 结构定义
///
/// 包含字段的完整描述信息，用于语义化访问 DBC 文件数据。
final class DbcStructureDefinition {
  /// 结构名称
  final String name;

  /// 格式字符串
  final String format;

  /// 字段定义列表
  final List<FieldDefinition> fields;

  const DbcStructureDefinition({
    required this.name,
    required this.format,
    required this.fields,
  });

  /// 获取字段数量
  int get fieldCount => format.length;

  /// 获取记录大小 (字节)
  int get recordSize {
    if (fields.isEmpty) return 0;
    var total = 0;
    for (var i = 0; i < fields.length - 1; i++) {
      total += fields[i].format.size;
    }
    final lastFormat = DbcFieldFormat.fromChar(format[format.length - 1]);
    return total + lastFormat.size;
  }

  /// 通过名称查找字段
  FieldDefinition? getFieldByName(String name) {
    try {
      return fields.firstWhere((f) => f.name == name);
    } catch (e) {
      return null;
    }
  }

  /// 通过索引查找字段
  FieldDefinition? getFieldByIndex(int index) {
    try {
      return fields.firstWhere((f) => f.index == index);
    } catch (e) {
      return null;
    }
  }
}

/// DBC 结构定义集合
///
/// 用于组织和导出相关 DBC 文件的结构定义。
final class DbcStructureDefinitionCollection {
  final Map<String, DbcStructureDefinition> _definitions = {};

  void add(DbcStructureDefinition definition) {
    _definitions[definition.name] = definition;
  }

  DbcStructureDefinition? get(String name) => _definitions[name];

  List<String> get allNames => _definitions.keys.toList()..sort();

  List<DbcStructureDefinition> get all => _definitions.values.toList()..sort((a, b) => a.name.compareTo(b.name));
}
