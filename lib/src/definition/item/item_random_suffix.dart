/// ItemRandomSuffix.dbc - 物品随机后缀格式
library;

import '../base/field_definition.dart';
import '../base/structure_definition.dart';
import '../../core/field_format.dart';

/// ItemRandomSuffix 格式字符串
const String itemRandomSuffixFormat = 'nssssssssssssssssxxiiiiiiiiii';

/// ItemRandomSuffix 结构定义
const DbcStructureDefinition itemRandomSuffix = DbcStructureDefinition(
  name: 'ItemRandomSuffix',
  format: itemRandomSuffixFormat,
  fields: [
    FieldDefinition(index: 0, name: 'ID', description: 'ID', format: DbcFieldFormat.intType),
    FieldDefinition(index: 1, name: 'Name', description: '名称', format: DbcFieldFormat.string),
    FieldDefinition(index: 2, name: 'Unknown1', description: '未知1', format: DbcFieldFormat.na),
    FieldDefinition(index: 3, name: 'Enchant1', description: '附魔 1', format: DbcFieldFormat.intType),
    FieldDefinition(index: 4, name: 'Enchant2', description: '附魔 2', format: DbcFieldFormat.intType),
    FieldDefinition(index: 5, name: 'Enchant3', description: '附魔 3', format: DbcFieldFormat.intType),
    FieldDefinition(index: 6, name: 'Enchant4', description: '附魔 4', format: DbcFieldFormat.intType),
    FieldDefinition(index: 7, name: 'Enchant5', description: '附魔 5', format: DbcFieldFormat.intType),
  ],
);
