import 'package:warcrafty/src/definition/base/field_definition.dart';
import 'package:warcrafty/src/definition/base/structure_definition.dart';
import 'package:warcrafty/src/core/field_format.dart';

/// ItemLimitCategory 格式字符串

/// ItemLimitCategory 结构定义
const itemLimitCategory = DbcStructureDefinition(
  name: 'ItemLimitCategory',
  format: 'nxxxxxxxxxxxxxxxxxii',
  fields: [
    FieldDefinition(index: 0, name: 'ID', description: 'ID', format: DbcFieldFormat.intType),
    FieldDefinition(index: 1, name: 'Name', description: '名称', format: DbcFieldFormat.na),
    FieldDefinition(index: 2, name: 'MaxCount', description: '最大数量', format: DbcFieldFormat.intType),
    FieldDefinition(index: 3, name: 'Flags', description: '标志', format: DbcFieldFormat.intType),
  ],
);
