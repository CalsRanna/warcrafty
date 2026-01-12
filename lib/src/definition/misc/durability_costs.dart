import 'package:warcrafty/src/core/field_definition.dart';
import 'package:warcrafty/src/core/structure_definition.dart';
import 'package:warcrafty/src/core/field_format.dart';

/// DurabilityCosts 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
const durabilityCosts = DbcStructureDefinition(
  name: 'DurabilityCosts',
  format: 'niiiiiiiiiiiiiiiiiiiiiiiiiiiii',
  fields: [
    FieldDefinition(index: 0, name: 'ID', description: 'ID', format: DbcFieldFormat.indexField),
    FieldDefinition(index: 1, name: 'WeaponSubClassCost0', description: 'WeaponSubClassCost 0', format: DbcFieldFormat.intType),
    FieldDefinition(index: 2, name: 'WeaponSubClassCost1', description: 'WeaponSubClassCost 1', format: DbcFieldFormat.intType),
    FieldDefinition(index: 3, name: 'WeaponSubClassCost2', description: 'WeaponSubClassCost 2', format: DbcFieldFormat.intType),
    FieldDefinition(index: 4, name: 'WeaponSubClassCost3', description: 'WeaponSubClassCost 3', format: DbcFieldFormat.intType),
    FieldDefinition(index: 5, name: 'WeaponSubClassCost4', description: 'WeaponSubClassCost 4', format: DbcFieldFormat.intType),
    FieldDefinition(index: 6, name: 'WeaponSubClassCost5', description: 'WeaponSubClassCost 5', format: DbcFieldFormat.intType),
    FieldDefinition(index: 7, name: 'WeaponSubClassCost6', description: 'WeaponSubClassCost 6', format: DbcFieldFormat.intType),
    FieldDefinition(index: 8, name: 'WeaponSubClassCost7', description: 'WeaponSubClassCost 7', format: DbcFieldFormat.intType),
    FieldDefinition(index: 9, name: 'WeaponSubClassCost8', description: 'WeaponSubClassCost 8', format: DbcFieldFormat.intType),
    FieldDefinition(index: 10, name: 'WeaponSubClassCost9', description: 'WeaponSubClassCost 9', format: DbcFieldFormat.intType),
    FieldDefinition(index: 11, name: 'WeaponSubClassCost10', description: 'WeaponSubClassCost 10', format: DbcFieldFormat.intType),
    FieldDefinition(index: 12, name: 'WeaponSubClassCost11', description: 'WeaponSubClassCost 11', format: DbcFieldFormat.intType),
    FieldDefinition(index: 13, name: 'WeaponSubClassCost12', description: 'WeaponSubClassCost 12', format: DbcFieldFormat.intType),
    FieldDefinition(index: 14, name: 'WeaponSubClassCost13', description: 'WeaponSubClassCost 13', format: DbcFieldFormat.intType),
    FieldDefinition(index: 15, name: 'WeaponSubClassCost14', description: 'WeaponSubClassCost 14', format: DbcFieldFormat.intType),
    FieldDefinition(index: 16, name: 'WeaponSubClassCost15', description: 'WeaponSubClassCost 15', format: DbcFieldFormat.intType),
    FieldDefinition(index: 17, name: 'WeaponSubClassCost16', description: 'WeaponSubClassCost 16', format: DbcFieldFormat.intType),
    FieldDefinition(index: 18, name: 'WeaponSubClassCost17', description: 'WeaponSubClassCost 17', format: DbcFieldFormat.intType),
    FieldDefinition(index: 19, name: 'WeaponSubClassCost18', description: 'WeaponSubClassCost 18', format: DbcFieldFormat.intType),
    FieldDefinition(index: 20, name: 'WeaponSubClassCost19', description: 'WeaponSubClassCost 19', format: DbcFieldFormat.intType),
    FieldDefinition(index: 21, name: 'WeaponSubClassCost20', description: 'WeaponSubClassCost 20', format: DbcFieldFormat.intType),
    FieldDefinition(index: 22, name: 'ArmorSubClassCost0', description: 'ArmorSubClassCost 0', format: DbcFieldFormat.intType),
    FieldDefinition(index: 23, name: 'ArmorSubClassCost1', description: 'ArmorSubClassCost 1', format: DbcFieldFormat.intType),
    FieldDefinition(index: 24, name: 'ArmorSubClassCost2', description: 'ArmorSubClassCost 2', format: DbcFieldFormat.intType),
    FieldDefinition(index: 25, name: 'ArmorSubClassCost3', description: 'ArmorSubClassCost 3', format: DbcFieldFormat.intType),
    FieldDefinition(index: 26, name: 'ArmorSubClassCost4', description: 'ArmorSubClassCost 4', format: DbcFieldFormat.intType),
    FieldDefinition(index: 27, name: 'ArmorSubClassCost5', description: 'ArmorSubClassCost 5', format: DbcFieldFormat.intType),
    FieldDefinition(index: 28, name: 'ArmorSubClassCost6', description: 'ArmorSubClassCost 6', format: DbcFieldFormat.intType),
    FieldDefinition(index: 29, name: 'ArmorSubClassCost7', description: 'ArmorSubClassCost 7', format: DbcFieldFormat.intType),
  ],
);
