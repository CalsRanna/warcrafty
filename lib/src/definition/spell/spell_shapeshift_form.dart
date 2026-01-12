import 'package:warcrafty/src/schema/field.dart';
import 'package:warcrafty/src/schema/schema.dart';
import 'package:warcrafty/src/tools/locale_fields.dart';

/// SpellShapeshiftForm 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
final spellShapeshiftForm = DbcSchema(
  name: 'SpellShapeshiftForm',
  format: 'nisssssssssssssssssiiiiiiiiiiiiiiii',
  fields: [
    const Field(index: 0, name: 'ID', description: 'ID', type: FieldType.id),
    const Field(index: 1, name: 'BonusActionBar', description: 'BonusActionBar', type: FieldType.int32),
    ...createLocaleFieldsWithFlag(2, 'Name_lang', 'Name_lang'),
    const Field(index: 19, name: 'Flags', description: 'Flags', type: FieldType.int32),
    const Field(index: 20, name: 'CreatureType', description: 'CreatureType', type: FieldType.int32),
    const Field(index: 21, name: 'AttackIconID', description: 'AttackIconID', type: FieldType.int32),
    const Field(index: 22, name: 'CombatRoundTime', description: 'CombatRoundTime', type: FieldType.int32),
    const Field(index: 23, name: 'CreatureDisplayID0', description: 'CreatureDisplayID 0', type: FieldType.int32),
    const Field(index: 24, name: 'CreatureDisplayID1', description: 'CreatureDisplayID 1', type: FieldType.int32),
    const Field(index: 25, name: 'CreatureDisplayID2', description: 'CreatureDisplayID 2', type: FieldType.int32),
    const Field(index: 26, name: 'CreatureDisplayID3', description: 'CreatureDisplayID 3', type: FieldType.int32),
    const Field(index: 27, name: 'PresetSpellID0', description: 'PresetSpellID 0', type: FieldType.int32),
    const Field(index: 28, name: 'PresetSpellID1', description: 'PresetSpellID 1', type: FieldType.int32),
    const Field(index: 29, name: 'PresetSpellID2', description: 'PresetSpellID 2', type: FieldType.int32),
    const Field(index: 30, name: 'PresetSpellID3', description: 'PresetSpellID 3', type: FieldType.int32),
    const Field(index: 31, name: 'PresetSpellID4', description: 'PresetSpellID 4', type: FieldType.int32),
    const Field(index: 32, name: 'PresetSpellID5', description: 'PresetSpellID 5', type: FieldType.int32),
    const Field(index: 33, name: 'PresetSpellID6', description: 'PresetSpellID 6', type: FieldType.int32),
    const Field(index: 34, name: 'PresetSpellID7', description: 'PresetSpellID 7', type: FieldType.int32),
  ],
);
