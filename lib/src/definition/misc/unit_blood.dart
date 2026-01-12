import 'package:warcrafty/src/definition/base/field_definition.dart';
import 'package:warcrafty/src/definition/base/structure_definition.dart';
import 'package:warcrafty/src/core/field_format.dart';

/// UnitBlood 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
const unitBlood = DbcStructureDefinition(
  name: 'UnitBlood',
  format: 'niiiisssss',
  fields: [
    FieldDefinition(index: 0, name: 'ID', description: 'ID', format: DbcFieldFormat.indexField),
    FieldDefinition(index: 1, name: 'CombatBloodSpurtFront0', description: 'CombatBloodSpurtFront 0', format: DbcFieldFormat.intType),
    FieldDefinition(index: 2, name: 'CombatBloodSpurtFront1', description: 'CombatBloodSpurtFront 1', format: DbcFieldFormat.intType),
    FieldDefinition(index: 3, name: 'CombatBloodSpurtBack0', description: 'CombatBloodSpurtBack 0', format: DbcFieldFormat.intType),
    FieldDefinition(index: 4, name: 'CombatBloodSpurtBack1', description: 'CombatBloodSpurtBack 1', format: DbcFieldFormat.intType),
    FieldDefinition(index: 5, name: 'GroundBlood0', description: 'GroundBlood 0', format: DbcFieldFormat.string),
    FieldDefinition(index: 6, name: 'GroundBlood1', description: 'GroundBlood 1', format: DbcFieldFormat.string),
    FieldDefinition(index: 7, name: 'GroundBlood2', description: 'GroundBlood 2', format: DbcFieldFormat.string),
    FieldDefinition(index: 8, name: 'GroundBlood3', description: 'GroundBlood 3', format: DbcFieldFormat.string),
    FieldDefinition(index: 9, name: 'GroundBlood4', description: 'GroundBlood 4', format: DbcFieldFormat.string),
  ],
);
