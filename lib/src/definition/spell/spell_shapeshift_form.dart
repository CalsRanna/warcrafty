import 'package:warcrafty/src/core/field_definition.dart';
import 'package:warcrafty/src/core/structure_definition.dart';
import 'package:warcrafty/src/core/field_format.dart';
import 'package:warcrafty/src/core/locale_fields.dart';

/// SpellShapeshiftForm 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
final spellShapeshiftForm = DbcStructureDefinition(
  name: 'SpellShapeshiftForm',
  format: 'nisssssssssssssssssiiiiiiiiiiiiiiii',
  fields: [
    const FieldDefinition(index: 0, name: 'ID', description: 'ID', format: DbcFieldFormat.indexField),
    const FieldDefinition(index: 1, name: 'BonusActionBar', description: 'BonusActionBar', format: DbcFieldFormat.intType),
    ...createLocaleFieldsWithFlag(2, 'Name_lang', 'Name_lang'),
    const FieldDefinition(index: 19, name: 'Flags', description: 'Flags', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 20, name: 'CreatureType', description: 'CreatureType', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 21, name: 'AttackIconID', description: 'AttackIconID', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 22, name: 'CombatRoundTime', description: 'CombatRoundTime', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 23, name: 'CreatureDisplayID0', description: 'CreatureDisplayID 0', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 24, name: 'CreatureDisplayID1', description: 'CreatureDisplayID 1', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 25, name: 'CreatureDisplayID2', description: 'CreatureDisplayID 2', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 26, name: 'CreatureDisplayID3', description: 'CreatureDisplayID 3', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 27, name: 'PresetSpellID0', description: 'PresetSpellID 0', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 28, name: 'PresetSpellID1', description: 'PresetSpellID 1', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 29, name: 'PresetSpellID2', description: 'PresetSpellID 2', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 30, name: 'PresetSpellID3', description: 'PresetSpellID 3', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 31, name: 'PresetSpellID4', description: 'PresetSpellID 4', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 32, name: 'PresetSpellID5', description: 'PresetSpellID 5', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 33, name: 'PresetSpellID6', description: 'PresetSpellID 6', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 34, name: 'PresetSpellID7', description: 'PresetSpellID 7', format: DbcFieldFormat.intType),
  ],
);
