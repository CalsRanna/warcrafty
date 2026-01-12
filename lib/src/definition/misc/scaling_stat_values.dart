import 'package:warcrafty/src/core/field_definition.dart';
import 'package:warcrafty/src/core/structure_definition.dart';
import 'package:warcrafty/src/core/field_format.dart';

/// ScalingStatValues 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
const scalingStatValues = DbcStructureDefinition(
  name: 'ScalingStatValues',
  format: 'niiiiiiiiiiiiiiiiiiiiiii',
  fields: [
    FieldDefinition(index: 0, name: 'ID', description: 'ID', format: DbcFieldFormat.indexField),
    FieldDefinition(index: 1, name: 'Charlevel', description: 'Charlevel', format: DbcFieldFormat.intType),
    FieldDefinition(index: 2, name: 'ShoulderBudget', description: 'ShoulderBudget', format: DbcFieldFormat.intType),
    FieldDefinition(index: 3, name: 'TrinketBudget', description: 'TrinketBudget', format: DbcFieldFormat.intType),
    FieldDefinition(index: 4, name: 'WeaponBudget1H', description: 'WeaponBudget1H', format: DbcFieldFormat.intType),
    FieldDefinition(index: 5, name: 'RangedBudget', description: 'RangedBudget', format: DbcFieldFormat.intType),
    FieldDefinition(index: 6, name: 'ClothShoulderArmor', description: 'ClothShoulderArmor', format: DbcFieldFormat.intType),
    FieldDefinition(index: 7, name: 'LeatherShoulderArmor', description: 'LeatherShoulderArmor', format: DbcFieldFormat.intType),
    FieldDefinition(index: 8, name: 'MailShoulderArmor', description: 'MailShoulderArmor', format: DbcFieldFormat.intType),
    FieldDefinition(index: 9, name: 'PlateShoulderArmor', description: 'PlateShoulderArmor', format: DbcFieldFormat.intType),
    FieldDefinition(index: 10, name: 'WeaponDPS1H', description: 'WeaponDPS1H', format: DbcFieldFormat.intType),
    FieldDefinition(index: 11, name: 'WeaponDPS2H', description: 'WeaponDPS2H', format: DbcFieldFormat.intType),
    FieldDefinition(index: 12, name: 'SpellcasterDPS1H', description: 'SpellcasterDPS1H', format: DbcFieldFormat.intType),
    FieldDefinition(index: 13, name: 'SpellcasterDPS2H', description: 'SpellcasterDPS2H', format: DbcFieldFormat.intType),
    FieldDefinition(index: 14, name: 'RangedDPS', description: 'RangedDPS', format: DbcFieldFormat.intType),
    FieldDefinition(index: 15, name: 'WandDPS', description: 'WandDPS', format: DbcFieldFormat.intType),
    FieldDefinition(index: 16, name: 'SpellPower', description: 'SpellPower', format: DbcFieldFormat.intType),
    FieldDefinition(index: 17, name: 'PrimaryBudget', description: 'PrimaryBudget', format: DbcFieldFormat.intType),
    FieldDefinition(index: 18, name: 'TertiaryBudget', description: 'TertiaryBudget', format: DbcFieldFormat.intType),
    FieldDefinition(index: 19, name: 'ClothCloakArmor', description: 'ClothCloakArmor', format: DbcFieldFormat.intType),
    FieldDefinition(index: 20, name: 'ClothChestArmor', description: 'ClothChestArmor', format: DbcFieldFormat.intType),
    FieldDefinition(index: 21, name: 'LeatherChestArmor', description: 'LeatherChestArmor', format: DbcFieldFormat.intType),
    FieldDefinition(index: 22, name: 'MailChestArmor', description: 'MailChestArmor', format: DbcFieldFormat.intType),
    FieldDefinition(index: 23, name: 'PlateChestArmor', description: 'PlateChestArmor', format: DbcFieldFormat.intType),
  ],
);
