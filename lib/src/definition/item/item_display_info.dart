import 'package:warcrafty/src/internal/field.dart';
import 'package:warcrafty/src/internal/schema.dart';

/// ItemDisplayInfo 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
const itemDisplayInfo = DbcSchema(
  name: 'ItemDisplayInfo',
  format: 'nssssssiiiiiiiissssssssii',
  fields: [
    Field(index: 0, name: 'ID', description: 'ID', type: FieldType.id),
    Field(index: 1, name: 'ModelName0', description: 'ModelName 0', type: FieldType.string),
    Field(index: 2, name: 'ModelName1', description: 'ModelName 1', type: FieldType.string),
    Field(index: 3, name: 'ModelTexture0', description: 'ModelTexture 0', type: FieldType.string),
    Field(index: 4, name: 'ModelTexture1', description: 'ModelTexture 1', type: FieldType.string),
    Field(index: 5, name: 'InventoryIcon0', description: 'InventoryIcon 0', type: FieldType.string),
    Field(index: 6, name: 'InventoryIcon1', description: 'InventoryIcon 1', type: FieldType.string),
    Field(index: 7, name: 'GeosetGroup0', description: 'GeosetGroup 0', type: FieldType.int32),
    Field(index: 8, name: 'GeosetGroup1', description: 'GeosetGroup 1', type: FieldType.int32),
    Field(index: 9, name: 'GeosetGroup2', description: 'GeosetGroup 2', type: FieldType.int32),
    Field(index: 10, name: 'Flags', description: 'Flags', type: FieldType.int32),
    Field(index: 11, name: 'SpellVisualID', description: 'SpellVisualID', type: FieldType.int32),
    Field(index: 12, name: 'GroupSoundIndex', description: 'GroupSoundIndex', type: FieldType.int32),
    Field(index: 13, name: 'HelmetGeosetVisID0', description: 'HelmetGeosetVisID 0', type: FieldType.int32),
    Field(index: 14, name: 'HelmetGeosetVisID1', description: 'HelmetGeosetVisID 1', type: FieldType.int32),
    Field(index: 15, name: 'Texture0', description: 'Texture 0', type: FieldType.string),
    Field(index: 16, name: 'Texture1', description: 'Texture 1', type: FieldType.string),
    Field(index: 17, name: 'Texture2', description: 'Texture 2', type: FieldType.string),
    Field(index: 18, name: 'Texture3', description: 'Texture 3', type: FieldType.string),
    Field(index: 19, name: 'Texture4', description: 'Texture 4', type: FieldType.string),
    Field(index: 20, name: 'Texture5', description: 'Texture 5', type: FieldType.string),
    Field(index: 21, name: 'Texture6', description: 'Texture 6', type: FieldType.string),
    Field(index: 22, name: 'Texture7', description: 'Texture 7', type: FieldType.string),
    Field(index: 23, name: 'ItemVisual', description: 'ItemVisual', type: FieldType.int32),
    Field(index: 24, name: 'ParticleColorID', description: 'ParticleColorID', type: FieldType.int32),
  ],
);
