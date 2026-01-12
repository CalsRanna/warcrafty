import 'package:warcrafty/src/schema/field.dart';
import 'package:warcrafty/src/schema/schema.dart';

/// VideoHardware 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
const videoHardware = DbcSchema(
  name: 'VideoHardware',
  format: 'niiiiiiiiiiiiiiiiissiii',
  fields: [
    Field(index: 0, name: 'ID', description: 'ID', type: FieldType.id),
    Field(index: 1, name: 'VendorID', description: 'VendorID', type: FieldType.int32),
    Field(index: 2, name: 'DeviceID', description: 'DeviceID', type: FieldType.int32),
    Field(index: 3, name: 'FarclipIdx', description: 'FarclipIdx', type: FieldType.int32),
    Field(index: 4, name: 'TerrainLODDistIdx', description: 'TerrainLODDistIdx', type: FieldType.int32),
    Field(index: 5, name: 'TerrainShadowLOD', description: 'TerrainShadowLOD', type: FieldType.int32),
    Field(index: 6, name: 'DetailDoodadDensityIdx', description: 'DetailDoodadDensityIdx', type: FieldType.int32),
    Field(index: 7, name: 'DetailDoodadAlpha', description: 'DetailDoodadAlpha', type: FieldType.int32),
    Field(index: 8, name: 'AnimatingDoodadIdx', description: 'AnimatingDoodadIdx', type: FieldType.int32),
    Field(index: 9, name: 'Trilinear', description: 'Trilinear', type: FieldType.int32),
    Field(index: 10, name: 'NumLights', description: 'NumLights', type: FieldType.int32),
    Field(index: 11, name: 'Specularity', description: 'Specularity', type: FieldType.int32),
    Field(index: 12, name: 'WaterLODIdx', description: 'WaterLODIdx', type: FieldType.int32),
    Field(index: 13, name: 'ParticleDensityIdx', description: 'ParticleDensityIdx', type: FieldType.int32),
    Field(index: 14, name: 'UnitDrawDistIdx', description: 'UnitDrawDistIdx', type: FieldType.int32),
    Field(index: 15, name: 'SmallCullDistIdx', description: 'SmallCullDistIdx', type: FieldType.int32),
    Field(index: 16, name: 'ResolutionIdx', description: 'ResolutionIdx', type: FieldType.int32),
    Field(index: 17, name: 'BaseMipLevel', description: 'BaseMipLevel', type: FieldType.int32),
    Field(index: 18, name: 'OglOverrides', description: 'OglOverrides', type: FieldType.string),
    Field(index: 19, name: 'D3dOverrides', description: 'D3dOverrides', type: FieldType.string),
    Field(index: 20, name: 'FixLag', description: 'FixLag', type: FieldType.int32),
    Field(index: 21, name: 'Multisample', description: 'Multisample', type: FieldType.int32),
    Field(index: 22, name: 'Atlasdisable', description: 'Atlasdisable', type: FieldType.int32),
  ],
);
