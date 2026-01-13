import 'package:warcrafty/src/internal/field.dart';
import 'package:warcrafty/src/internal/schema.dart';

/// Talent 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
const talent = DbcSchema(
  name: 'Talent',
  format: 'niiiiiiiiiiiiiiiiiiiiii',
  fields: [
    Field(index: 0, name: 'ID', description: 'ID', type: FieldType.id),
    Field(index: 1, name: 'TabID', description: 'TabID', type: FieldType.int32),
    Field(index: 2, name: 'TierID', description: 'TierID', type: FieldType.int32),
    Field(index: 3, name: 'ColumnIndex', description: 'ColumnIndex', type: FieldType.int32),
    Field(index: 4, name: 'SpellRank0', description: 'SpellRank 0', type: FieldType.int32),
    Field(index: 5, name: 'SpellRank1', description: 'SpellRank 1', type: FieldType.int32),
    Field(index: 6, name: 'SpellRank2', description: 'SpellRank 2', type: FieldType.int32),
    Field(index: 7, name: 'SpellRank3', description: 'SpellRank 3', type: FieldType.int32),
    Field(index: 8, name: 'SpellRank4', description: 'SpellRank 4', type: FieldType.int32),
    Field(index: 9, name: 'SpellRank5', description: 'SpellRank 5', type: FieldType.int32),
    Field(index: 10, name: 'SpellRank6', description: 'SpellRank 6', type: FieldType.int32),
    Field(index: 11, name: 'SpellRank7', description: 'SpellRank 7', type: FieldType.int32),
    Field(index: 12, name: 'SpellRank8', description: 'SpellRank 8', type: FieldType.int32),
    Field(index: 13, name: 'PrereqTalent0', description: 'PrereqTalent 0', type: FieldType.int32),
    Field(index: 14, name: 'PrereqTalent1', description: 'PrereqTalent 1', type: FieldType.int32),
    Field(index: 15, name: 'PrereqTalent2', description: 'PrereqTalent 2', type: FieldType.int32),
    Field(index: 16, name: 'PrereqRank0', description: 'PrereqRank 0', type: FieldType.int32),
    Field(index: 17, name: 'PrereqRank1', description: 'PrereqRank 1', type: FieldType.int32),
    Field(index: 18, name: 'PrereqRank2', description: 'PrereqRank 2', type: FieldType.int32),
    Field(index: 19, name: 'Flags', description: 'Flags', type: FieldType.int32),
    Field(index: 20, name: 'RequiredSpellID', description: 'RequiredSpellID', type: FieldType.int32),
    Field(index: 21, name: 'CategoryMask0', description: 'CategoryMask 0', type: FieldType.int32),
    Field(index: 22, name: 'CategoryMask1', description: 'CategoryMask 1', type: FieldType.int32),
  ],
);
