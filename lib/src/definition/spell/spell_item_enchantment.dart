import 'package:warcrafty/src/schema/field.dart';
import 'package:warcrafty/src/schema/schema.dart';
import 'package:warcrafty/src/tools/locale_fields.dart';

/// SpellItemEnchantment 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
final spellItemEnchantment = DbcSchema(
  name: 'SpellItemEnchantment',
  format: 'niiiiiiiiiiiiisssssssssssssssssiiiiiii',
  fields: [
    const Field(index: 0, name: 'ID', description: 'ID', type: FieldType.id),
    const Field(index: 1, name: 'Charges', description: 'Charges', type: FieldType.int32),
    const Field(index: 2, name: 'Effect0', description: 'Effect 0', type: FieldType.int32),
    const Field(index: 3, name: 'Effect1', description: 'Effect 1', type: FieldType.int32),
    const Field(index: 4, name: 'Effect2', description: 'Effect 2', type: FieldType.int32),
    const Field(index: 5, name: 'EffectPointsMin0', description: 'EffectPointsMin 0', type: FieldType.int32),
    const Field(index: 6, name: 'EffectPointsMin1', description: 'EffectPointsMin 1', type: FieldType.int32),
    const Field(index: 7, name: 'EffectPointsMin2', description: 'EffectPointsMin 2', type: FieldType.int32),
    const Field(index: 8, name: 'EffectPointsMax0', description: 'EffectPointsMax 0', type: FieldType.int32),
    const Field(index: 9, name: 'EffectPointsMax1', description: 'EffectPointsMax 1', type: FieldType.int32),
    const Field(index: 10, name: 'EffectPointsMax2', description: 'EffectPointsMax 2', type: FieldType.int32),
    const Field(index: 11, name: 'EffectArg0', description: 'EffectArg 0', type: FieldType.int32),
    const Field(index: 12, name: 'EffectArg1', description: 'EffectArg 1', type: FieldType.int32),
    const Field(index: 13, name: 'EffectArg2', description: 'EffectArg 2', type: FieldType.int32),
    ...createLocaleFieldsWithFlag(14, 'Name_lang', 'Name_lang'),
    const Field(index: 31, name: 'ItemVisual', description: 'ItemVisual', type: FieldType.int32),
    const Field(index: 32, name: 'Flags', description: 'Flags', type: FieldType.int32),
    const Field(index: 33, name: 'Src_itemID', description: 'Src_itemID', type: FieldType.int32),
    const Field(index: 34, name: 'Condition_ID', description: 'Condition_ID', type: FieldType.int32),
    const Field(index: 35, name: 'RequiredSkillID', description: 'RequiredSkillID', type: FieldType.int32),
    const Field(index: 36, name: 'RequiredSkillRank', description: 'RequiredSkillRank', type: FieldType.int32),
    const Field(index: 37, name: 'MinLevel', description: 'MinLevel', type: FieldType.int32),
  ],
);
