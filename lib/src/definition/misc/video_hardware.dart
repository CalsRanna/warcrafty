import 'package:warcrafty/src/core/field_definition.dart';
import 'package:warcrafty/src/core/structure_definition.dart';
import 'package:warcrafty/src/core/field_format.dart';

/// VideoHardware 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
const videoHardware = DbcStructureDefinition(
  name: 'VideoHardware',
  format: 'niiiiiiiiiiiiiiiiissiii',
  fields: [
    FieldDefinition(index: 0, name: 'ID', description: 'ID', format: DbcFieldFormat.indexField),
    FieldDefinition(index: 1, name: 'VendorID', description: 'VendorID', format: DbcFieldFormat.intType),
    FieldDefinition(index: 2, name: 'DeviceID', description: 'DeviceID', format: DbcFieldFormat.intType),
    FieldDefinition(index: 3, name: 'FarclipIdx', description: 'FarclipIdx', format: DbcFieldFormat.intType),
    FieldDefinition(index: 4, name: 'TerrainLODDistIdx', description: 'TerrainLODDistIdx', format: DbcFieldFormat.intType),
    FieldDefinition(index: 5, name: 'TerrainShadowLOD', description: 'TerrainShadowLOD', format: DbcFieldFormat.intType),
    FieldDefinition(index: 6, name: 'DetailDoodadDensityIdx', description: 'DetailDoodadDensityIdx', format: DbcFieldFormat.intType),
    FieldDefinition(index: 7, name: 'DetailDoodadAlpha', description: 'DetailDoodadAlpha', format: DbcFieldFormat.intType),
    FieldDefinition(index: 8, name: 'AnimatingDoodadIdx', description: 'AnimatingDoodadIdx', format: DbcFieldFormat.intType),
    FieldDefinition(index: 9, name: 'Trilinear', description: 'Trilinear', format: DbcFieldFormat.intType),
    FieldDefinition(index: 10, name: 'NumLights', description: 'NumLights', format: DbcFieldFormat.intType),
    FieldDefinition(index: 11, name: 'Specularity', description: 'Specularity', format: DbcFieldFormat.intType),
    FieldDefinition(index: 12, name: 'WaterLODIdx', description: 'WaterLODIdx', format: DbcFieldFormat.intType),
    FieldDefinition(index: 13, name: 'ParticleDensityIdx', description: 'ParticleDensityIdx', format: DbcFieldFormat.intType),
    FieldDefinition(index: 14, name: 'UnitDrawDistIdx', description: 'UnitDrawDistIdx', format: DbcFieldFormat.intType),
    FieldDefinition(index: 15, name: 'SmallCullDistIdx', description: 'SmallCullDistIdx', format: DbcFieldFormat.intType),
    FieldDefinition(index: 16, name: 'ResolutionIdx', description: 'ResolutionIdx', format: DbcFieldFormat.intType),
    FieldDefinition(index: 17, name: 'BaseMipLevel', description: 'BaseMipLevel', format: DbcFieldFormat.intType),
    FieldDefinition(index: 18, name: 'OglOverrides', description: 'OglOverrides', format: DbcFieldFormat.string),
    FieldDefinition(index: 19, name: 'D3dOverrides', description: 'D3dOverrides', format: DbcFieldFormat.string),
    FieldDefinition(index: 20, name: 'FixLag', description: 'FixLag', format: DbcFieldFormat.intType),
    FieldDefinition(index: 21, name: 'Multisample', description: 'Multisample', format: DbcFieldFormat.intType),
    FieldDefinition(index: 22, name: 'Atlasdisable', description: 'Atlasdisable', format: DbcFieldFormat.intType),
  ],
);
