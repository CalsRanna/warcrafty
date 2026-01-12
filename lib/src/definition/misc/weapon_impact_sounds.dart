import 'package:warcrafty/src/core/field_definition.dart';
import 'package:warcrafty/src/core/structure_definition.dart';
import 'package:warcrafty/src/core/field_format.dart';

/// WeaponImpactSounds 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
const weaponImpactSounds = DbcStructureDefinition(
  name: 'WeaponImpactSounds',
  format: 'niiiiiiiiiiiiiiiiiiiiii',
  fields: [
    FieldDefinition(index: 0, name: 'ID', description: 'ID', format: DbcFieldFormat.indexField),
    FieldDefinition(index: 1, name: 'WeaponSubClassID', description: 'WeaponSubClassID', format: DbcFieldFormat.intType),
    FieldDefinition(index: 2, name: 'ParrySoundType', description: 'ParrySoundType', format: DbcFieldFormat.intType),
    FieldDefinition(index: 3, name: 'ImpactSoundID0', description: 'ImpactSoundID 0', format: DbcFieldFormat.intType),
    FieldDefinition(index: 4, name: 'ImpactSoundID1', description: 'ImpactSoundID 1', format: DbcFieldFormat.intType),
    FieldDefinition(index: 5, name: 'ImpactSoundID2', description: 'ImpactSoundID 2', format: DbcFieldFormat.intType),
    FieldDefinition(index: 6, name: 'ImpactSoundID3', description: 'ImpactSoundID 3', format: DbcFieldFormat.intType),
    FieldDefinition(index: 7, name: 'ImpactSoundID4', description: 'ImpactSoundID 4', format: DbcFieldFormat.intType),
    FieldDefinition(index: 8, name: 'ImpactSoundID5', description: 'ImpactSoundID 5', format: DbcFieldFormat.intType),
    FieldDefinition(index: 9, name: 'ImpactSoundID6', description: 'ImpactSoundID 6', format: DbcFieldFormat.intType),
    FieldDefinition(index: 10, name: 'ImpactSoundID7', description: 'ImpactSoundID 7', format: DbcFieldFormat.intType),
    FieldDefinition(index: 11, name: 'ImpactSoundID8', description: 'ImpactSoundID 8', format: DbcFieldFormat.intType),
    FieldDefinition(index: 12, name: 'ImpactSoundID9', description: 'ImpactSoundID 9', format: DbcFieldFormat.intType),
    FieldDefinition(index: 13, name: 'CritImpactSoundID0', description: 'CritImpactSoundID 0', format: DbcFieldFormat.intType),
    FieldDefinition(index: 14, name: 'CritImpactSoundID1', description: 'CritImpactSoundID 1', format: DbcFieldFormat.intType),
    FieldDefinition(index: 15, name: 'CritImpactSoundID2', description: 'CritImpactSoundID 2', format: DbcFieldFormat.intType),
    FieldDefinition(index: 16, name: 'CritImpactSoundID3', description: 'CritImpactSoundID 3', format: DbcFieldFormat.intType),
    FieldDefinition(index: 17, name: 'CritImpactSoundID4', description: 'CritImpactSoundID 4', format: DbcFieldFormat.intType),
    FieldDefinition(index: 18, name: 'CritImpactSoundID5', description: 'CritImpactSoundID 5', format: DbcFieldFormat.intType),
    FieldDefinition(index: 19, name: 'CritImpactSoundID6', description: 'CritImpactSoundID 6', format: DbcFieldFormat.intType),
    FieldDefinition(index: 20, name: 'CritImpactSoundID7', description: 'CritImpactSoundID 7', format: DbcFieldFormat.intType),
    FieldDefinition(index: 21, name: 'CritImpactSoundID8', description: 'CritImpactSoundID 8', format: DbcFieldFormat.intType),
    FieldDefinition(index: 22, name: 'CritImpactSoundID9', description: 'CritImpactSoundID 9', format: DbcFieldFormat.intType),
  ],
);
