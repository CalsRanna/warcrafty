import 'package:warcrafty/src/schema/field.dart';
import 'package:warcrafty/src/schema/schema.dart';

/// SkillLineAbility 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
const skillLineAbility = DbcSchema(
  name: 'SkillLineAbility',
  format: 'niiiiiiiiiiiii',
  fields: [
    Field(index: 0, name: 'ID', description: 'ID', type: FieldType.id),
    Field(index: 1, name: 'SkillLine', description: 'SkillLine', type: FieldType.int32),
    Field(index: 2, name: 'Spell', description: 'Spell', type: FieldType.int32),
    Field(index: 3, name: 'RaceMask', description: 'RaceMask', type: FieldType.int32),
    Field(index: 4, name: 'ClassMask', description: 'ClassMask', type: FieldType.int32),
    Field(index: 5, name: 'ExcludeRace', description: 'ExcludeRace', type: FieldType.int32),
    Field(index: 6, name: 'ExcludeClass', description: 'ExcludeClass', type: FieldType.int32),
    Field(index: 7, name: 'MinSkillLineRank', description: 'MinSkillLineRank', type: FieldType.int32),
    Field(index: 8, name: 'SupercededBySpell', description: 'SupercededBySpell', type: FieldType.int32),
    Field(index: 9, name: 'AcquireMethod', description: 'AcquireMethod', type: FieldType.int32),
    Field(index: 10, name: 'TrivialSkillLineRankHigh', description: 'TrivialSkillLineRankHigh', type: FieldType.int32),
    Field(index: 11, name: 'TrivialSkillLineRankLow', description: 'TrivialSkillLineRankLow', type: FieldType.int32),
    Field(index: 12, name: 'CharacterPoints0', description: 'CharacterPoints 0', type: FieldType.int32),
    Field(index: 13, name: 'CharacterPoints1', description: 'CharacterPoints 1', type: FieldType.int32),
  ],
);
