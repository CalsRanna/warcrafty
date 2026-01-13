import 'package:warcrafty/src/internal/field.dart';
import 'package:warcrafty/src/internal/schema.dart';

/// DurabilityCosts 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
const durabilityCosts = DbcSchema(
  name: 'DurabilityCosts',
  format: 'niiiiiiiiiiiiiiiiiiiiiiiiiiiii',
  fields: [
    Field(index: 0, name: 'ID', description: 'ID', type: FieldType.id),
    Field(index: 1, name: 'WeaponSubClassCost0', description: 'WeaponSubClassCost 0', type: FieldType.int32),
    Field(index: 2, name: 'WeaponSubClassCost1', description: 'WeaponSubClassCost 1', type: FieldType.int32),
    Field(index: 3, name: 'WeaponSubClassCost2', description: 'WeaponSubClassCost 2', type: FieldType.int32),
    Field(index: 4, name: 'WeaponSubClassCost3', description: 'WeaponSubClassCost 3', type: FieldType.int32),
    Field(index: 5, name: 'WeaponSubClassCost4', description: 'WeaponSubClassCost 4', type: FieldType.int32),
    Field(index: 6, name: 'WeaponSubClassCost5', description: 'WeaponSubClassCost 5', type: FieldType.int32),
    Field(index: 7, name: 'WeaponSubClassCost6', description: 'WeaponSubClassCost 6', type: FieldType.int32),
    Field(index: 8, name: 'WeaponSubClassCost7', description: 'WeaponSubClassCost 7', type: FieldType.int32),
    Field(index: 9, name: 'WeaponSubClassCost8', description: 'WeaponSubClassCost 8', type: FieldType.int32),
    Field(index: 10, name: 'WeaponSubClassCost9', description: 'WeaponSubClassCost 9', type: FieldType.int32),
    Field(index: 11, name: 'WeaponSubClassCost10', description: 'WeaponSubClassCost 10', type: FieldType.int32),
    Field(index: 12, name: 'WeaponSubClassCost11', description: 'WeaponSubClassCost 11', type: FieldType.int32),
    Field(index: 13, name: 'WeaponSubClassCost12', description: 'WeaponSubClassCost 12', type: FieldType.int32),
    Field(index: 14, name: 'WeaponSubClassCost13', description: 'WeaponSubClassCost 13', type: FieldType.int32),
    Field(index: 15, name: 'WeaponSubClassCost14', description: 'WeaponSubClassCost 14', type: FieldType.int32),
    Field(index: 16, name: 'WeaponSubClassCost15', description: 'WeaponSubClassCost 15', type: FieldType.int32),
    Field(index: 17, name: 'WeaponSubClassCost16', description: 'WeaponSubClassCost 16', type: FieldType.int32),
    Field(index: 18, name: 'WeaponSubClassCost17', description: 'WeaponSubClassCost 17', type: FieldType.int32),
    Field(index: 19, name: 'WeaponSubClassCost18', description: 'WeaponSubClassCost 18', type: FieldType.int32),
    Field(index: 20, name: 'WeaponSubClassCost19', description: 'WeaponSubClassCost 19', type: FieldType.int32),
    Field(index: 21, name: 'WeaponSubClassCost20', description: 'WeaponSubClassCost 20', type: FieldType.int32),
    Field(index: 22, name: 'ArmorSubClassCost0', description: 'ArmorSubClassCost 0', type: FieldType.int32),
    Field(index: 23, name: 'ArmorSubClassCost1', description: 'ArmorSubClassCost 1', type: FieldType.int32),
    Field(index: 24, name: 'ArmorSubClassCost2', description: 'ArmorSubClassCost 2', type: FieldType.int32),
    Field(index: 25, name: 'ArmorSubClassCost3', description: 'ArmorSubClassCost 3', type: FieldType.int32),
    Field(index: 26, name: 'ArmorSubClassCost4', description: 'ArmorSubClassCost 4', type: FieldType.int32),
    Field(index: 27, name: 'ArmorSubClassCost5', description: 'ArmorSubClassCost 5', type: FieldType.int32),
    Field(index: 28, name: 'ArmorSubClassCost6', description: 'ArmorSubClassCost 6', type: FieldType.int32),
    Field(index: 29, name: 'ArmorSubClassCost7', description: 'ArmorSubClassCost 7', type: FieldType.int32),
  ],
);
