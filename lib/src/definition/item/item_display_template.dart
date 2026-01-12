/// ItemDisplayTemplate.dbc - 物品显示模板格式
library;

import '../base/field_definition.dart';
import '../base/structure_definition.dart';
import '../../core/field_format.dart';

/// ItemDisplayTemplate 格式字符串
const String itemDisplayTemplateFormat = 'nxxxxsxxxxxxxxxxxxxxxxxxx';

/// ItemDisplayTemplate 结构定义
const DbcStructureDefinition itemDisplayTemplate = DbcStructureDefinition(
  name: 'ItemDisplayTemplate',
  format: itemDisplayTemplateFormat,
  fields: [
    FieldDefinition(index: 0, name: 'ID', description: 'ID', format: DbcFieldFormat.intType),
    FieldDefinition(index: 1, name: 'Unknown1', description: '未知1', format: DbcFieldFormat.na),
    FieldDefinition(index: 2, name: 'Unknown2', description: '未知2', format: DbcFieldFormat.na),
    FieldDefinition(index: 3, name: 'Unknown3', description: '未知3', format: DbcFieldFormat.na),
    FieldDefinition(index: 4, name: 'Unknown4', description: '未知4', format: DbcFieldFormat.na),
    FieldDefinition(index: 5, name: 'ModelName', description: '模型名称', format: DbcFieldFormat.string),
  ],
);
