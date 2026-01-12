import 'package:warcrafty/src/core/field_definition.dart';
import 'package:warcrafty/src/core/structure_definition.dart';
import 'package:warcrafty/src/core/field_format.dart';

/// ItemDisplayInfo 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
const itemDisplayInfo = DbcStructureDefinition(
  name: 'ItemDisplayInfo',
  format: 'nssssssiiiiiiiissssssssii',
  fields: [
    FieldDefinition(index: 0, name: 'ID', description: 'ID', format: DbcFieldFormat.indexField),
    FieldDefinition(index: 1, name: 'ModelName0', description: 'ModelName 0', format: DbcFieldFormat.string),
    FieldDefinition(index: 2, name: 'ModelName1', description: 'ModelName 1', format: DbcFieldFormat.string),
    FieldDefinition(index: 3, name: 'ModelTexture0', description: 'ModelTexture 0', format: DbcFieldFormat.string),
    FieldDefinition(index: 4, name: 'ModelTexture1', description: 'ModelTexture 1', format: DbcFieldFormat.string),
    FieldDefinition(index: 5, name: 'InventoryIcon0', description: 'InventoryIcon 0', format: DbcFieldFormat.string),
    FieldDefinition(index: 6, name: 'InventoryIcon1', description: 'InventoryIcon 1', format: DbcFieldFormat.string),
    FieldDefinition(index: 7, name: 'GeosetGroup0', description: 'GeosetGroup 0', format: DbcFieldFormat.intType),
    FieldDefinition(index: 8, name: 'GeosetGroup1', description: 'GeosetGroup 1', format: DbcFieldFormat.intType),
    FieldDefinition(index: 9, name: 'GeosetGroup2', description: 'GeosetGroup 2', format: DbcFieldFormat.intType),
    FieldDefinition(index: 10, name: 'Flags', description: 'Flags', format: DbcFieldFormat.intType),
    FieldDefinition(index: 11, name: 'SpellVisualID', description: 'SpellVisualID', format: DbcFieldFormat.intType),
    FieldDefinition(index: 12, name: 'GroupSoundIndex', description: 'GroupSoundIndex', format: DbcFieldFormat.intType),
    FieldDefinition(index: 13, name: 'HelmetGeosetVisID0', description: 'HelmetGeosetVisID 0', format: DbcFieldFormat.intType),
    FieldDefinition(index: 14, name: 'HelmetGeosetVisID1', description: 'HelmetGeosetVisID 1', format: DbcFieldFormat.intType),
    FieldDefinition(index: 15, name: 'Texture0', description: 'Texture 0', format: DbcFieldFormat.string),
    FieldDefinition(index: 16, name: 'Texture1', description: 'Texture 1', format: DbcFieldFormat.string),
    FieldDefinition(index: 17, name: 'Texture2', description: 'Texture 2', format: DbcFieldFormat.string),
    FieldDefinition(index: 18, name: 'Texture3', description: 'Texture 3', format: DbcFieldFormat.string),
    FieldDefinition(index: 19, name: 'Texture4', description: 'Texture 4', format: DbcFieldFormat.string),
    FieldDefinition(index: 20, name: 'Texture5', description: 'Texture 5', format: DbcFieldFormat.string),
    FieldDefinition(index: 21, name: 'Texture6', description: 'Texture 6', format: DbcFieldFormat.string),
    FieldDefinition(index: 22, name: 'Texture7', description: 'Texture 7', format: DbcFieldFormat.string),
    FieldDefinition(index: 23, name: 'ItemVisual', description: 'ItemVisual', format: DbcFieldFormat.intType),
    FieldDefinition(index: 24, name: 'ParticleColorID', description: 'ParticleColorID', format: DbcFieldFormat.intType),
  ],
);
