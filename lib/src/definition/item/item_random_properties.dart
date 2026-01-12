/// ItemRandomProperties.dbc - 物品随机属性格式
library;

import '../base/field_definition.dart';
import '../base/structure_definition.dart';
import '../../core/field_format.dart';

/// ItemRandomProperties 格式字符串
const String itemRandomPropertiesFormat = 'nxiiiiissssssssssssssssx';

/// ItemRandomProperties 结构定义
const DbcStructureDefinition itemRandomProperties = DbcStructureDefinition(
  name: 'ItemRandomProperties',
  format: itemRandomPropertiesFormat,
  fields: [
    FieldDefinition(index: 0, name: 'ID', description: 'ID', format: DbcFieldFormat.intType),
    FieldDefinition(index: 1, name: 'Unknown1', description: '未知1', format: DbcFieldFormat.na),
    FieldDefinition(index: 2, name: 'Enchant1', description: '附魔 1', format: DbcFieldFormat.intType),
    FieldDefinition(index: 3, name: 'Enchant2', description: '附魔 2', format: DbcFieldFormat.intType),
    FieldDefinition(index: 4, name: 'Enchant3', description: '附魔 3', format: DbcFieldFormat.intType),
    FieldDefinition(index: 5, name: 'Enchant4', description: '附魔 4', format: DbcFieldFormat.intType),
    FieldDefinition(index: 6, name: 'Name', description: '名称', format: DbcFieldFormat.string),
    FieldDefinition(index: 7, name: 'Unknown2', description: '未知2', format: DbcFieldFormat.na),
  ],
);
