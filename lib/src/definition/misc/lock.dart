import 'package:warcrafty/src/core/field_definition.dart';
import 'package:warcrafty/src/core/structure_definition.dart';
import 'package:warcrafty/src/core/field_format.dart';

/// Lock 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
const lock = DbcStructureDefinition(
  name: 'Lock',
  format: 'niiiiiiiiiiiiiiiiiiiiiiiiiiiiiiii',
  fields: [
    FieldDefinition(index: 0, name: 'ID', description: 'ID', format: DbcFieldFormat.indexField),
    FieldDefinition(index: 1, name: 'Type0', description: 'Type 0', format: DbcFieldFormat.intType),
    FieldDefinition(index: 2, name: 'Type1', description: 'Type 1', format: DbcFieldFormat.intType),
    FieldDefinition(index: 3, name: 'Type2', description: 'Type 2', format: DbcFieldFormat.intType),
    FieldDefinition(index: 4, name: 'Type3', description: 'Type 3', format: DbcFieldFormat.intType),
    FieldDefinition(index: 5, name: 'Type4', description: 'Type 4', format: DbcFieldFormat.intType),
    FieldDefinition(index: 6, name: 'Type5', description: 'Type 5', format: DbcFieldFormat.intType),
    FieldDefinition(index: 7, name: 'Type6', description: 'Type 6', format: DbcFieldFormat.intType),
    FieldDefinition(index: 8, name: 'Type7', description: 'Type 7', format: DbcFieldFormat.intType),
    FieldDefinition(index: 9, name: 'Index0', description: 'Index 0', format: DbcFieldFormat.intType),
    FieldDefinition(index: 10, name: 'Index1', description: 'Index 1', format: DbcFieldFormat.intType),
    FieldDefinition(index: 11, name: 'Index2', description: 'Index 2', format: DbcFieldFormat.intType),
    FieldDefinition(index: 12, name: 'Index3', description: 'Index 3', format: DbcFieldFormat.intType),
    FieldDefinition(index: 13, name: 'Index4', description: 'Index 4', format: DbcFieldFormat.intType),
    FieldDefinition(index: 14, name: 'Index5', description: 'Index 5', format: DbcFieldFormat.intType),
    FieldDefinition(index: 15, name: 'Index6', description: 'Index 6', format: DbcFieldFormat.intType),
    FieldDefinition(index: 16, name: 'Index7', description: 'Index 7', format: DbcFieldFormat.intType),
    FieldDefinition(index: 17, name: 'Skill0', description: 'Skill 0', format: DbcFieldFormat.intType),
    FieldDefinition(index: 18, name: 'Skill1', description: 'Skill 1', format: DbcFieldFormat.intType),
    FieldDefinition(index: 19, name: 'Skill2', description: 'Skill 2', format: DbcFieldFormat.intType),
    FieldDefinition(index: 20, name: 'Skill3', description: 'Skill 3', format: DbcFieldFormat.intType),
    FieldDefinition(index: 21, name: 'Skill4', description: 'Skill 4', format: DbcFieldFormat.intType),
    FieldDefinition(index: 22, name: 'Skill5', description: 'Skill 5', format: DbcFieldFormat.intType),
    FieldDefinition(index: 23, name: 'Skill6', description: 'Skill 6', format: DbcFieldFormat.intType),
    FieldDefinition(index: 24, name: 'Skill7', description: 'Skill 7', format: DbcFieldFormat.intType),
    FieldDefinition(index: 25, name: 'Action0', description: 'Action 0', format: DbcFieldFormat.intType),
    FieldDefinition(index: 26, name: 'Action1', description: 'Action 1', format: DbcFieldFormat.intType),
    FieldDefinition(index: 27, name: 'Action2', description: 'Action 2', format: DbcFieldFormat.intType),
    FieldDefinition(index: 28, name: 'Action3', description: 'Action 3', format: DbcFieldFormat.intType),
    FieldDefinition(index: 29, name: 'Action4', description: 'Action 4', format: DbcFieldFormat.intType),
    FieldDefinition(index: 30, name: 'Action5', description: 'Action 5', format: DbcFieldFormat.intType),
    FieldDefinition(index: 31, name: 'Action6', description: 'Action 6', format: DbcFieldFormat.intType),
    FieldDefinition(index: 32, name: 'Action7', description: 'Action 7', format: DbcFieldFormat.intType),
  ],
);
