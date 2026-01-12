import 'package:warcrafty/src/definition/base/field_definition.dart';
import 'package:warcrafty/src/definition/base/structure_definition.dart';
import 'package:warcrafty/src/core/field_format.dart';

/// RandomPropertiesPoints 格式字符串

/// RandomPropertiesPoints 结构定义
const randomPropertiesPoints = DbcStructureDefinition(
  name: 'RandomPropertiesPoints',
  format: 'niiiiiiiiiiiiiii',
  fields: [
    FieldDefinition(index: 0, name: 'ID', description: 'ID', format: DbcFieldFormat.intType),
    FieldDefinition(index: 1, name: 'Epic1', description: '史诗 1', format: DbcFieldFormat.intType),
    FieldDefinition(index: 2, name: 'Epic2', description: '史诗 2', format: DbcFieldFormat.intType),
    FieldDefinition(index: 3, name: 'Epic3', description: '史诗 3', format: DbcFieldFormat.intType),
    FieldDefinition(index: 4, name: 'Epic4', description: '史诗 4', format: DbcFieldFormat.intType),
    FieldDefinition(index: 5, name: 'Epic5', description: '史诗 5', format: DbcFieldFormat.intType),
    FieldDefinition(index: 6, name: 'Rare1', description: '稀有 1', format: DbcFieldFormat.intType),
    FieldDefinition(index: 7, name: 'Rare2', description: '稀有 2', format: DbcFieldFormat.intType),
    FieldDefinition(index: 8, name: 'Rare3', description: '稀有 3', format: DbcFieldFormat.intType),
    FieldDefinition(index: 9, name: 'Rare4', description: '稀有 4', format: DbcFieldFormat.intType),
    FieldDefinition(index: 10, name: 'Rare5', description: '稀有 5', format: DbcFieldFormat.intType),
    FieldDefinition(index: 11, name: 'Uncommon1', description: '优秀 1', format: DbcFieldFormat.intType),
    FieldDefinition(index: 12, name: 'Uncommon2', description: '优秀 2', format: DbcFieldFormat.intType),
    FieldDefinition(index: 13, name: 'Uncommon3', description: '优秀 3', format: DbcFieldFormat.intType),
    FieldDefinition(index: 14, name: 'Uncommon4', description: '优秀 4', format: DbcFieldFormat.intType),
    FieldDefinition(index: 15, name: 'Uncommon5', description: '优秀 5', format: DbcFieldFormat.intType),
  ],
);
