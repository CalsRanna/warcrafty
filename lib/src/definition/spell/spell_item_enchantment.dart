import 'package:warcrafty/src/core/field_definition.dart';
import 'package:warcrafty/src/core/structure_definition.dart';
import 'package:warcrafty/src/core/field_format.dart';
import 'package:warcrafty/src/core/locale_fields.dart';

/// SpellItemEnchantment 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
final spellItemEnchantment = DbcStructureDefinition(
  name: 'SpellItemEnchantment',
  format: 'niiiiiiiiiiiiisssssssssssssssssiiiiiii',
  fields: [
    const FieldDefinition(index: 0, name: 'ID', description: 'ID', format: DbcFieldFormat.indexField),
    const FieldDefinition(index: 1, name: 'Charges', description: 'Charges', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 2, name: 'Effect0', description: 'Effect 0', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 3, name: 'Effect1', description: 'Effect 1', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 4, name: 'Effect2', description: 'Effect 2', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 5, name: 'EffectPointsMin0', description: 'EffectPointsMin 0', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 6, name: 'EffectPointsMin1', description: 'EffectPointsMin 1', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 7, name: 'EffectPointsMin2', description: 'EffectPointsMin 2', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 8, name: 'EffectPointsMax0', description: 'EffectPointsMax 0', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 9, name: 'EffectPointsMax1', description: 'EffectPointsMax 1', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 10, name: 'EffectPointsMax2', description: 'EffectPointsMax 2', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 11, name: 'EffectArg0', description: 'EffectArg 0', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 12, name: 'EffectArg1', description: 'EffectArg 1', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 13, name: 'EffectArg2', description: 'EffectArg 2', format: DbcFieldFormat.intType),
    ...createLocaleFieldsWithFlag(14, 'Name_lang', 'Name_lang'),
    const FieldDefinition(index: 31, name: 'ItemVisual', description: 'ItemVisual', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 32, name: 'Flags', description: 'Flags', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 33, name: 'Src_itemID', description: 'Src_itemID', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 34, name: 'Condition_ID', description: 'Condition_ID', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 35, name: 'RequiredSkillID', description: 'RequiredSkillID', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 36, name: 'RequiredSkillRank', description: 'RequiredSkillRank', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 37, name: 'MinLevel', description: 'MinLevel', format: DbcFieldFormat.intType),
  ],
);
