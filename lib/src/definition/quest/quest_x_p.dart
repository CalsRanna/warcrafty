import 'package:warcrafty/src/definition/base/field_definition.dart';
import 'package:warcrafty/src/definition/base/structure_definition.dart';
import 'package:warcrafty/src/core/field_format.dart';

/// QuestXP 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
const questXP = DbcStructureDefinition(
  name: 'QuestXP',
  format: 'niiiiiiiiii',
  fields: [
    FieldDefinition(index: 0, name: 'ID', description: 'ID', format: DbcFieldFormat.indexField),
    FieldDefinition(index: 1, name: 'Difficulty0', description: 'Difficulty 0', format: DbcFieldFormat.intType),
    FieldDefinition(index: 2, name: 'Difficulty1', description: 'Difficulty 1', format: DbcFieldFormat.intType),
    FieldDefinition(index: 3, name: 'Difficulty2', description: 'Difficulty 2', format: DbcFieldFormat.intType),
    FieldDefinition(index: 4, name: 'Difficulty3', description: 'Difficulty 3', format: DbcFieldFormat.intType),
    FieldDefinition(index: 5, name: 'Difficulty4', description: 'Difficulty 4', format: DbcFieldFormat.intType),
    FieldDefinition(index: 6, name: 'Difficulty5', description: 'Difficulty 5', format: DbcFieldFormat.intType),
    FieldDefinition(index: 7, name: 'Difficulty6', description: 'Difficulty 6', format: DbcFieldFormat.intType),
    FieldDefinition(index: 8, name: 'Difficulty7', description: 'Difficulty 7', format: DbcFieldFormat.intType),
    FieldDefinition(index: 9, name: 'Difficulty8', description: 'Difficulty 8', format: DbcFieldFormat.intType),
    FieldDefinition(index: 10, name: 'Difficulty9', description: 'Difficulty 9', format: DbcFieldFormat.intType),
  ],
);
