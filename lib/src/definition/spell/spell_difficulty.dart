import 'package:warcrafty/src/core/field_definition.dart';
import 'package:warcrafty/src/core/structure_definition.dart';
import 'package:warcrafty/src/core/field_format.dart';

/// SpellDifficulty 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
const spellDifficulty = DbcStructureDefinition(
  name: 'SpellDifficulty',
  format: 'niiii',
  fields: [
    FieldDefinition(index: 0, name: 'ID', description: 'ID', format: DbcFieldFormat.indexField),
    FieldDefinition(index: 1, name: 'DifficultySpellID0', description: 'DifficultySpellID 0', format: DbcFieldFormat.intType),
    FieldDefinition(index: 2, name: 'DifficultySpellID1', description: 'DifficultySpellID 1', format: DbcFieldFormat.intType),
    FieldDefinition(index: 3, name: 'DifficultySpellID2', description: 'DifficultySpellID 2', format: DbcFieldFormat.intType),
    FieldDefinition(index: 4, name: 'DifficultySpellID3', description: 'DifficultySpellID 3', format: DbcFieldFormat.intType),
  ],
);
