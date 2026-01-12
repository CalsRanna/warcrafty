import 'package:warcrafty/src/schema/field.dart';
import 'package:warcrafty/src/schema/schema.dart';

/// CreatureDisplayInfo 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
const creatureDisplayInfo = DbcSchema(
  name: 'CreatureDisplayInfo',
  format: 'niiifissssiiiiii',
  fields: [
    Field(index: 0, name: 'ID', description: 'ID', type: FieldType.id),
    Field(index: 1, name: 'ModelID', description: 'ModelID', type: FieldType.int32),
    Field(index: 2, name: 'SoundID', description: 'SoundID', type: FieldType.int32),
    Field(index: 3, name: 'ExtendedDisplayInfoID', description: 'ExtendedDisplayInfoID', type: FieldType.int32),
    Field(index: 4, name: 'CreatureModelScale', description: 'CreatureModelScale', type: FieldType.float),
    Field(index: 5, name: 'CreatureModelAlpha', description: 'CreatureModelAlpha', type: FieldType.int32),
    Field(index: 6, name: 'TextureVariation0', description: 'TextureVariation 0', type: FieldType.string),
    Field(index: 7, name: 'TextureVariation1', description: 'TextureVariation 1', type: FieldType.string),
    Field(index: 8, name: 'TextureVariation2', description: 'TextureVariation 2', type: FieldType.string),
    Field(index: 9, name: 'PortraitTextureName', description: 'PortraitTextureName', type: FieldType.string),
    Field(index: 10, name: 'SizeClass', description: 'SizeClass', type: FieldType.int32),
    Field(index: 11, name: 'BloodID', description: 'BloodID', type: FieldType.int32),
    Field(index: 12, name: 'NPCSoundID', description: 'NPCSoundID', type: FieldType.int32),
    Field(index: 13, name: 'ParticleColorID', description: 'ParticleColorID', type: FieldType.int32),
    Field(index: 14, name: 'CreatureGeosetData', description: 'CreatureGeosetData', type: FieldType.int32),
    Field(index: 15, name: 'ObjectEffectPackageID', description: 'ObjectEffectPackageID', type: FieldType.int32),
  ],
);
