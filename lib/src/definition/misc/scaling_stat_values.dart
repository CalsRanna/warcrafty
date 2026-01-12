import 'package:warcrafty/src/schema/field.dart';
import 'package:warcrafty/src/schema/schema.dart';

/// ScalingStatValues 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
const scalingStatValues = DbcSchema(
  name: 'ScalingStatValues',
  format: 'niiiiiiiiiiiiiiiiiiiiiii',
  fields: [
    Field(index: 0, name: 'ID', description: 'ID', type: FieldType.id),
    Field(index: 1, name: 'Charlevel', description: 'Charlevel', type: FieldType.int32),
    Field(index: 2, name: 'ShoulderBudget', description: 'ShoulderBudget', type: FieldType.int32),
    Field(index: 3, name: 'TrinketBudget', description: 'TrinketBudget', type: FieldType.int32),
    Field(index: 4, name: 'WeaponBudget1H', description: 'WeaponBudget1H', type: FieldType.int32),
    Field(index: 5, name: 'RangedBudget', description: 'RangedBudget', type: FieldType.int32),
    Field(index: 6, name: 'ClothShoulderArmor', description: 'ClothShoulderArmor', type: FieldType.int32),
    Field(index: 7, name: 'LeatherShoulderArmor', description: 'LeatherShoulderArmor', type: FieldType.int32),
    Field(index: 8, name: 'MailShoulderArmor', description: 'MailShoulderArmor', type: FieldType.int32),
    Field(index: 9, name: 'PlateShoulderArmor', description: 'PlateShoulderArmor', type: FieldType.int32),
    Field(index: 10, name: 'WeaponDPS1H', description: 'WeaponDPS1H', type: FieldType.int32),
    Field(index: 11, name: 'WeaponDPS2H', description: 'WeaponDPS2H', type: FieldType.int32),
    Field(index: 12, name: 'SpellcasterDPS1H', description: 'SpellcasterDPS1H', type: FieldType.int32),
    Field(index: 13, name: 'SpellcasterDPS2H', description: 'SpellcasterDPS2H', type: FieldType.int32),
    Field(index: 14, name: 'RangedDPS', description: 'RangedDPS', type: FieldType.int32),
    Field(index: 15, name: 'WandDPS', description: 'WandDPS', type: FieldType.int32),
    Field(index: 16, name: 'SpellPower', description: 'SpellPower', type: FieldType.int32),
    Field(index: 17, name: 'PrimaryBudget', description: 'PrimaryBudget', type: FieldType.int32),
    Field(index: 18, name: 'TertiaryBudget', description: 'TertiaryBudget', type: FieldType.int32),
    Field(index: 19, name: 'ClothCloakArmor', description: 'ClothCloakArmor', type: FieldType.int32),
    Field(index: 20, name: 'ClothChestArmor', description: 'ClothChestArmor', type: FieldType.int32),
    Field(index: 21, name: 'LeatherChestArmor', description: 'LeatherChestArmor', type: FieldType.int32),
    Field(index: 22, name: 'MailChestArmor', description: 'MailChestArmor', type: FieldType.int32),
    Field(index: 23, name: 'PlateChestArmor', description: 'PlateChestArmor', type: FieldType.int32),
  ],
);
