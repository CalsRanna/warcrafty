import 'package:warcrafty/src/definition/base/field_definition.dart';
import 'package:warcrafty/src/definition/base/structure_definition.dart';
import 'package:warcrafty/src/core/field_format.dart';
import 'package:warcrafty/src/definition/common/locale_fields.dart';

/// ItemSet 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
final itemSet = DbcStructureDefinition(
  name: 'ItemSet',
  format: 'nsssssssssssssssssiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiii',
  fields: [
    const FieldDefinition(index: 0, name: 'ID', description: 'ID', format: DbcFieldFormat.indexField),
    ...createLocaleFieldsWithFlag(1, 'Name_lang', 'Name_lang'),
    const FieldDefinition(index: 18, name: 'ItemID0', description: 'ItemID 0', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 19, name: 'ItemID1', description: 'ItemID 1', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 20, name: 'ItemID2', description: 'ItemID 2', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 21, name: 'ItemID3', description: 'ItemID 3', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 22, name: 'ItemID4', description: 'ItemID 4', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 23, name: 'ItemID5', description: 'ItemID 5', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 24, name: 'ItemID6', description: 'ItemID 6', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 25, name: 'ItemID7', description: 'ItemID 7', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 26, name: 'ItemID8', description: 'ItemID 8', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 27, name: 'ItemID9', description: 'ItemID 9', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 28, name: 'ItemID10', description: 'ItemID 10', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 29, name: 'ItemID11', description: 'ItemID 11', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 30, name: 'ItemID12', description: 'ItemID 12', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 31, name: 'ItemID13', description: 'ItemID 13', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 32, name: 'ItemID14', description: 'ItemID 14', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 33, name: 'ItemID15', description: 'ItemID 15', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 34, name: 'ItemID16', description: 'ItemID 16', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 35, name: 'SetSpellID0', description: 'SetSpellID 0', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 36, name: 'SetSpellID1', description: 'SetSpellID 1', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 37, name: 'SetSpellID2', description: 'SetSpellID 2', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 38, name: 'SetSpellID3', description: 'SetSpellID 3', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 39, name: 'SetSpellID4', description: 'SetSpellID 4', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 40, name: 'SetSpellID5', description: 'SetSpellID 5', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 41, name: 'SetSpellID6', description: 'SetSpellID 6', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 42, name: 'SetSpellID7', description: 'SetSpellID 7', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 43, name: 'SetThreshold0', description: 'SetThreshold 0', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 44, name: 'SetThreshold1', description: 'SetThreshold 1', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 45, name: 'SetThreshold2', description: 'SetThreshold 2', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 46, name: 'SetThreshold3', description: 'SetThreshold 3', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 47, name: 'SetThreshold4', description: 'SetThreshold 4', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 48, name: 'SetThreshold5', description: 'SetThreshold 5', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 49, name: 'SetThreshold6', description: 'SetThreshold 6', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 50, name: 'SetThreshold7', description: 'SetThreshold 7', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 51, name: 'RequiredSkill', description: 'RequiredSkill', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 52, name: 'RequiredSkillRank', description: 'RequiredSkillRank', format: DbcFieldFormat.intType),
  ],
);
