import 'package:warcrafty/src/definition/base/field_definition.dart';
import 'package:warcrafty/src/definition/base/structure_definition.dart';
import 'package:warcrafty/src/core/field_format.dart';

/// CreatureModelData 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
const creatureModelData = DbcStructureDefinition(
  name: 'CreatureModelData',
  format: 'nisifiifffiiiiffffffffffffff',
  fields: [
    FieldDefinition(index: 0, name: 'ID', description: 'ID', format: DbcFieldFormat.indexField),
    FieldDefinition(index: 1, name: 'Flags', description: 'Flags', format: DbcFieldFormat.intType),
    FieldDefinition(index: 2, name: 'ModelName', description: 'ModelName', format: DbcFieldFormat.string),
    FieldDefinition(index: 3, name: 'SizeClass', description: 'SizeClass', format: DbcFieldFormat.intType),
    FieldDefinition(index: 4, name: 'ModelScale', description: 'ModelScale', format: DbcFieldFormat.float),
    FieldDefinition(index: 5, name: 'BloodID', description: 'BloodID', format: DbcFieldFormat.intType),
    FieldDefinition(index: 6, name: 'FootprintTextureID', description: 'FootprintTextureID', format: DbcFieldFormat.intType),
    FieldDefinition(index: 7, name: 'FootprintTextureLength', description: 'FootprintTextureLength', format: DbcFieldFormat.float),
    FieldDefinition(index: 8, name: 'FootprintTextureWidth', description: 'FootprintTextureWidth', format: DbcFieldFormat.float),
    FieldDefinition(index: 9, name: 'FootprintParticleScale', description: 'FootprintParticleScale', format: DbcFieldFormat.float),
    FieldDefinition(index: 10, name: 'FoleyMaterialID', description: 'FoleyMaterialID', format: DbcFieldFormat.intType),
    FieldDefinition(index: 11, name: 'FootstepShakeSize', description: 'FootstepShakeSize', format: DbcFieldFormat.intType),
    FieldDefinition(index: 12, name: 'DeathThudShakeSize', description: 'DeathThudShakeSize', format: DbcFieldFormat.intType),
    FieldDefinition(index: 13, name: 'SoundID', description: 'SoundID', format: DbcFieldFormat.intType),
    FieldDefinition(index: 14, name: 'CollisionWidth', description: 'CollisionWidth', format: DbcFieldFormat.float),
    FieldDefinition(index: 15, name: 'CollisionHeight', description: 'CollisionHeight', format: DbcFieldFormat.float),
    FieldDefinition(index: 16, name: 'MountHeight', description: 'MountHeight', format: DbcFieldFormat.float),
    FieldDefinition(index: 17, name: 'GeoBoxMinX', description: 'GeoBoxMinX', format: DbcFieldFormat.float),
    FieldDefinition(index: 18, name: 'GeoBoxMinY', description: 'GeoBoxMinY', format: DbcFieldFormat.float),
    FieldDefinition(index: 19, name: 'GeoBoxMinZ', description: 'GeoBoxMinZ', format: DbcFieldFormat.float),
    FieldDefinition(index: 20, name: 'GeoBoxMaxX', description: 'GeoBoxMaxX', format: DbcFieldFormat.float),
    FieldDefinition(index: 21, name: 'GeoBoxMaxY', description: 'GeoBoxMaxY', format: DbcFieldFormat.float),
    FieldDefinition(index: 22, name: 'GeoBoxMaxZ', description: 'GeoBoxMaxZ', format: DbcFieldFormat.float),
    FieldDefinition(index: 23, name: 'WorldEffectScale', description: 'WorldEffectScale', format: DbcFieldFormat.float),
    FieldDefinition(index: 24, name: 'AttachedEffectScale', description: 'AttachedEffectScale', format: DbcFieldFormat.float),
    FieldDefinition(index: 25, name: 'MissileCollisionRadius', description: 'MissileCollisionRadius', format: DbcFieldFormat.float),
    FieldDefinition(index: 26, name: 'MissileCollisionPush', description: 'MissileCollisionPush', format: DbcFieldFormat.float),
    FieldDefinition(index: 27, name: 'MissileCollisionRaise', description: 'MissileCollisionRaise', format: DbcFieldFormat.float),
  ],
);
