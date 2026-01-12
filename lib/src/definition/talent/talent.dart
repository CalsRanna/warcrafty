import 'package:warcrafty/src/definition/base/field_definition.dart';
import 'package:warcrafty/src/definition/base/structure_definition.dart';
import 'package:warcrafty/src/core/field_format.dart';

/// Talent 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
const talent = DbcStructureDefinition(
  name: 'Talent',
  format: 'niiiiiiiiiiiiiiiiiiiiii',
  fields: [
    FieldDefinition(index: 0, name: 'ID', description: 'ID', format: DbcFieldFormat.indexField),
    FieldDefinition(index: 1, name: 'TabID', description: 'TabID', format: DbcFieldFormat.intType),
    FieldDefinition(index: 2, name: 'TierID', description: 'TierID', format: DbcFieldFormat.intType),
    FieldDefinition(index: 3, name: 'ColumnIndex', description: 'ColumnIndex', format: DbcFieldFormat.intType),
    FieldDefinition(index: 4, name: 'SpellRank0', description: 'SpellRank 0', format: DbcFieldFormat.intType),
    FieldDefinition(index: 5, name: 'SpellRank1', description: 'SpellRank 1', format: DbcFieldFormat.intType),
    FieldDefinition(index: 6, name: 'SpellRank2', description: 'SpellRank 2', format: DbcFieldFormat.intType),
    FieldDefinition(index: 7, name: 'SpellRank3', description: 'SpellRank 3', format: DbcFieldFormat.intType),
    FieldDefinition(index: 8, name: 'SpellRank4', description: 'SpellRank 4', format: DbcFieldFormat.intType),
    FieldDefinition(index: 9, name: 'SpellRank5', description: 'SpellRank 5', format: DbcFieldFormat.intType),
    FieldDefinition(index: 10, name: 'SpellRank6', description: 'SpellRank 6', format: DbcFieldFormat.intType),
    FieldDefinition(index: 11, name: 'SpellRank7', description: 'SpellRank 7', format: DbcFieldFormat.intType),
    FieldDefinition(index: 12, name: 'SpellRank8', description: 'SpellRank 8', format: DbcFieldFormat.intType),
    FieldDefinition(index: 13, name: 'PrereqTalent0', description: 'PrereqTalent 0', format: DbcFieldFormat.intType),
    FieldDefinition(index: 14, name: 'PrereqTalent1', description: 'PrereqTalent 1', format: DbcFieldFormat.intType),
    FieldDefinition(index: 15, name: 'PrereqTalent2', description: 'PrereqTalent 2', format: DbcFieldFormat.intType),
    FieldDefinition(index: 16, name: 'PrereqRank0', description: 'PrereqRank 0', format: DbcFieldFormat.intType),
    FieldDefinition(index: 17, name: 'PrereqRank1', description: 'PrereqRank 1', format: DbcFieldFormat.intType),
    FieldDefinition(index: 18, name: 'PrereqRank2', description: 'PrereqRank 2', format: DbcFieldFormat.intType),
    FieldDefinition(index: 19, name: 'Flags', description: 'Flags', format: DbcFieldFormat.intType),
    FieldDefinition(index: 20, name: 'RequiredSpellID', description: 'RequiredSpellID', format: DbcFieldFormat.intType),
    FieldDefinition(index: 21, name: 'CategoryMask0', description: 'CategoryMask 0', format: DbcFieldFormat.intType),
    FieldDefinition(index: 22, name: 'CategoryMask1', description: 'CategoryMask 1', format: DbcFieldFormat.intType),
  ],
);
