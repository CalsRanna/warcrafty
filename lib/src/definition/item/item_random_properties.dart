import 'package:warcrafty/src/definition/base/field_definition.dart';
import 'package:warcrafty/src/definition/base/structure_definition.dart';
import 'package:warcrafty/src/core/field_format.dart';

/// ItemRandomProperties 格式字符串

/// ItemRandomProperties 结构定义
const itemRandomProperties = DbcStructureDefinition(
  name: 'ItemRandomProperties',
  format: 'nxiiiiissssssssssssssssx',
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
