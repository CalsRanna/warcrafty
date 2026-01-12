import 'package:warcrafty/src/definition/base/field_definition.dart';
import 'package:warcrafty/src/definition/base/structure_definition.dart';
import 'package:warcrafty/src/core/field_format.dart';

/// CreatureDisplayInfo 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
const creatureDisplayInfo = DbcStructureDefinition(
  name: 'CreatureDisplayInfo',
  format: 'niiifissssiiiiii',
  fields: [
    FieldDefinition(index: 0, name: 'ID', description: 'ID', format: DbcFieldFormat.indexField),
    FieldDefinition(index: 1, name: 'ModelID', description: 'ModelID', format: DbcFieldFormat.intType),
    FieldDefinition(index: 2, name: 'SoundID', description: 'SoundID', format: DbcFieldFormat.intType),
    FieldDefinition(index: 3, name: 'ExtendedDisplayInfoID', description: 'ExtendedDisplayInfoID', format: DbcFieldFormat.intType),
    FieldDefinition(index: 4, name: 'CreatureModelScale', description: 'CreatureModelScale', format: DbcFieldFormat.float),
    FieldDefinition(index: 5, name: 'CreatureModelAlpha', description: 'CreatureModelAlpha', format: DbcFieldFormat.intType),
    FieldDefinition(index: 6, name: 'TextureVariation0', description: 'TextureVariation 0', format: DbcFieldFormat.string),
    FieldDefinition(index: 7, name: 'TextureVariation1', description: 'TextureVariation 1', format: DbcFieldFormat.string),
    FieldDefinition(index: 8, name: 'TextureVariation2', description: 'TextureVariation 2', format: DbcFieldFormat.string),
    FieldDefinition(index: 9, name: 'PortraitTextureName', description: 'PortraitTextureName', format: DbcFieldFormat.string),
    FieldDefinition(index: 10, name: 'SizeClass', description: 'SizeClass', format: DbcFieldFormat.intType),
    FieldDefinition(index: 11, name: 'BloodID', description: 'BloodID', format: DbcFieldFormat.intType),
    FieldDefinition(index: 12, name: 'NPCSoundID', description: 'NPCSoundID', format: DbcFieldFormat.intType),
    FieldDefinition(index: 13, name: 'ParticleColorID', description: 'ParticleColorID', format: DbcFieldFormat.intType),
    FieldDefinition(index: 14, name: 'CreatureGeosetData', description: 'CreatureGeosetData', format: DbcFieldFormat.intType),
    FieldDefinition(index: 15, name: 'ObjectEffectPackageID', description: 'ObjectEffectPackageID', format: DbcFieldFormat.intType),
  ],
);
