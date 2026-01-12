import 'package:warcrafty/src/schema/field.dart';
import 'package:warcrafty/src/schema/schema.dart';

/// WeaponImpactSounds 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
const weaponImpactSounds = DbcSchema(
  name: 'WeaponImpactSounds',
  format: 'niiiiiiiiiiiiiiiiiiiiii',
  fields: [
    Field(index: 0, name: 'ID', description: 'ID', type: FieldType.id),
    Field(index: 1, name: 'WeaponSubClassID', description: 'WeaponSubClassID', type: FieldType.int32),
    Field(index: 2, name: 'ParrySoundType', description: 'ParrySoundType', type: FieldType.int32),
    Field(index: 3, name: 'ImpactSoundID0', description: 'ImpactSoundID 0', type: FieldType.int32),
    Field(index: 4, name: 'ImpactSoundID1', description: 'ImpactSoundID 1', type: FieldType.int32),
    Field(index: 5, name: 'ImpactSoundID2', description: 'ImpactSoundID 2', type: FieldType.int32),
    Field(index: 6, name: 'ImpactSoundID3', description: 'ImpactSoundID 3', type: FieldType.int32),
    Field(index: 7, name: 'ImpactSoundID4', description: 'ImpactSoundID 4', type: FieldType.int32),
    Field(index: 8, name: 'ImpactSoundID5', description: 'ImpactSoundID 5', type: FieldType.int32),
    Field(index: 9, name: 'ImpactSoundID6', description: 'ImpactSoundID 6', type: FieldType.int32),
    Field(index: 10, name: 'ImpactSoundID7', description: 'ImpactSoundID 7', type: FieldType.int32),
    Field(index: 11, name: 'ImpactSoundID8', description: 'ImpactSoundID 8', type: FieldType.int32),
    Field(index: 12, name: 'ImpactSoundID9', description: 'ImpactSoundID 9', type: FieldType.int32),
    Field(index: 13, name: 'CritImpactSoundID0', description: 'CritImpactSoundID 0', type: FieldType.int32),
    Field(index: 14, name: 'CritImpactSoundID1', description: 'CritImpactSoundID 1', type: FieldType.int32),
    Field(index: 15, name: 'CritImpactSoundID2', description: 'CritImpactSoundID 2', type: FieldType.int32),
    Field(index: 16, name: 'CritImpactSoundID3', description: 'CritImpactSoundID 3', type: FieldType.int32),
    Field(index: 17, name: 'CritImpactSoundID4', description: 'CritImpactSoundID 4', type: FieldType.int32),
    Field(index: 18, name: 'CritImpactSoundID5', description: 'CritImpactSoundID 5', type: FieldType.int32),
    Field(index: 19, name: 'CritImpactSoundID6', description: 'CritImpactSoundID 6', type: FieldType.int32),
    Field(index: 20, name: 'CritImpactSoundID7', description: 'CritImpactSoundID 7', type: FieldType.int32),
    Field(index: 21, name: 'CritImpactSoundID8', description: 'CritImpactSoundID 8', type: FieldType.int32),
    Field(index: 22, name: 'CritImpactSoundID9', description: 'CritImpactSoundID 9', type: FieldType.int32),
  ],
);
