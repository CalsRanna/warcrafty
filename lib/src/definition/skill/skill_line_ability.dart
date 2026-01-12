import 'package:warcrafty/src/definition/base/field_definition.dart';
import 'package:warcrafty/src/definition/base/structure_definition.dart';
import 'package:warcrafty/src/core/field_format.dart';

/// SkillLineAbility 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
const skillLineAbility = DbcStructureDefinition(
  name: 'SkillLineAbility',
  format: 'niiiiiiiiiiiii',
  fields: [
    FieldDefinition(index: 0, name: 'ID', description: 'ID', format: DbcFieldFormat.indexField),
    FieldDefinition(index: 1, name: 'SkillLine', description: 'SkillLine', format: DbcFieldFormat.intType),
    FieldDefinition(index: 2, name: 'Spell', description: 'Spell', format: DbcFieldFormat.intType),
    FieldDefinition(index: 3, name: 'RaceMask', description: 'RaceMask', format: DbcFieldFormat.intType),
    FieldDefinition(index: 4, name: 'ClassMask', description: 'ClassMask', format: DbcFieldFormat.intType),
    FieldDefinition(index: 5, name: 'ExcludeRace', description: 'ExcludeRace', format: DbcFieldFormat.intType),
    FieldDefinition(index: 6, name: 'ExcludeClass', description: 'ExcludeClass', format: DbcFieldFormat.intType),
    FieldDefinition(index: 7, name: 'MinSkillLineRank', description: 'MinSkillLineRank', format: DbcFieldFormat.intType),
    FieldDefinition(index: 8, name: 'SupercededBySpell', description: 'SupercededBySpell', format: DbcFieldFormat.intType),
    FieldDefinition(index: 9, name: 'AcquireMethod', description: 'AcquireMethod', format: DbcFieldFormat.intType),
    FieldDefinition(index: 10, name: 'TrivialSkillLineRankHigh', description: 'TrivialSkillLineRankHigh', format: DbcFieldFormat.intType),
    FieldDefinition(index: 11, name: 'TrivialSkillLineRankLow', description: 'TrivialSkillLineRankLow', format: DbcFieldFormat.intType),
    FieldDefinition(index: 12, name: 'CharacterPoints0', description: 'CharacterPoints 0', format: DbcFieldFormat.intType),
    FieldDefinition(index: 13, name: 'CharacterPoints1', description: 'CharacterPoints 1', format: DbcFieldFormat.intType),
  ],
);
