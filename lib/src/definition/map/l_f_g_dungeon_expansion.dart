import 'package:warcrafty/src/definition/base/field_definition.dart';
import 'package:warcrafty/src/definition/base/structure_definition.dart';
import 'package:warcrafty/src/core/field_format.dart';

/// LFGDungeonExpansion 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
const lFGDungeonExpansion = DbcStructureDefinition(
  name: 'LFGDungeonExpansion',
  format: 'niiiiiii',
  fields: [
    FieldDefinition(index: 0, name: 'ID', description: 'ID', format: DbcFieldFormat.indexField),
    FieldDefinition(index: 1, name: 'Lfg_ID', description: 'Lfg_ID', format: DbcFieldFormat.intType),
    FieldDefinition(index: 2, name: 'Expansion_level', description: 'Expansion_level', format: DbcFieldFormat.intType),
    FieldDefinition(index: 3, name: 'Random_ID', description: 'Random_ID', format: DbcFieldFormat.intType),
    FieldDefinition(index: 4, name: 'Hard_level_min', description: 'Hard_level_min', format: DbcFieldFormat.intType),
    FieldDefinition(index: 5, name: 'Hard_level_max', description: 'Hard_level_max', format: DbcFieldFormat.intType),
    FieldDefinition(index: 6, name: 'Target_level_min', description: 'Target_level_min', format: DbcFieldFormat.intType),
    FieldDefinition(index: 7, name: 'Target_level_max', description: 'Target_level_max', format: DbcFieldFormat.intType),
  ],
);
