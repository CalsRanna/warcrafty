import 'package:warcrafty/src/schema/field.dart';
import 'package:warcrafty/src/schema/schema.dart';

/// CreatureModelData 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
const creatureModelData = DbcSchema(
  name: 'CreatureModelData',
  format: 'nisifiifffiiiiffffffffffffff',
  fields: [
    Field(index: 0, name: 'ID', description: 'ID', type: FieldType.id),
    Field(index: 1, name: 'Flags', description: 'Flags', type: FieldType.int32),
    Field(index: 2, name: 'ModelName', description: 'ModelName', type: FieldType.string),
    Field(index: 3, name: 'SizeClass', description: 'SizeClass', type: FieldType.int32),
    Field(index: 4, name: 'ModelScale', description: 'ModelScale', type: FieldType.float),
    Field(index: 5, name: 'BloodID', description: 'BloodID', type: FieldType.int32),
    Field(index: 6, name: 'FootprintTextureID', description: 'FootprintTextureID', type: FieldType.int32),
    Field(index: 7, name: 'FootprintTextureLength', description: 'FootprintTextureLength', type: FieldType.float),
    Field(index: 8, name: 'FootprintTextureWidth', description: 'FootprintTextureWidth', type: FieldType.float),
    Field(index: 9, name: 'FootprintParticleScale', description: 'FootprintParticleScale', type: FieldType.float),
    Field(index: 10, name: 'FoleyMaterialID', description: 'FoleyMaterialID', type: FieldType.int32),
    Field(index: 11, name: 'FootstepShakeSize', description: 'FootstepShakeSize', type: FieldType.int32),
    Field(index: 12, name: 'DeathThudShakeSize', description: 'DeathThudShakeSize', type: FieldType.int32),
    Field(index: 13, name: 'SoundID', description: 'SoundID', type: FieldType.int32),
    Field(index: 14, name: 'CollisionWidth', description: 'CollisionWidth', type: FieldType.float),
    Field(index: 15, name: 'CollisionHeight', description: 'CollisionHeight', type: FieldType.float),
    Field(index: 16, name: 'MountHeight', description: 'MountHeight', type: FieldType.float),
    Field(index: 17, name: 'GeoBoxMinX', description: 'GeoBoxMinX', type: FieldType.float),
    Field(index: 18, name: 'GeoBoxMinY', description: 'GeoBoxMinY', type: FieldType.float),
    Field(index: 19, name: 'GeoBoxMinZ', description: 'GeoBoxMinZ', type: FieldType.float),
    Field(index: 20, name: 'GeoBoxMaxX', description: 'GeoBoxMaxX', type: FieldType.float),
    Field(index: 21, name: 'GeoBoxMaxY', description: 'GeoBoxMaxY', type: FieldType.float),
    Field(index: 22, name: 'GeoBoxMaxZ', description: 'GeoBoxMaxZ', type: FieldType.float),
    Field(index: 23, name: 'WorldEffectScale', description: 'WorldEffectScale', type: FieldType.float),
    Field(index: 24, name: 'AttachedEffectScale', description: 'AttachedEffectScale', type: FieldType.float),
    Field(index: 25, name: 'MissileCollisionRadius', description: 'MissileCollisionRadius', type: FieldType.float),
    Field(index: 26, name: 'MissileCollisionPush', description: 'MissileCollisionPush', type: FieldType.float),
    Field(index: 27, name: 'MissileCollisionRaise', description: 'MissileCollisionRaise', type: FieldType.float),
  ],
);
