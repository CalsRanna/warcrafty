import 'package:warcrafty/src/core/field_definition.dart';
import 'package:warcrafty/src/core/structure_definition.dart';
import 'package:warcrafty/src/core/field_format.dart';

/// FootstepTerrainLookup 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
const footstepTerrainLookup = DbcStructureDefinition(
  name: 'FootstepTerrainLookup',
  format: 'niiii',
  fields: [
    FieldDefinition(index: 0, name: 'ID', description: 'ID', format: DbcFieldFormat.indexField),
    FieldDefinition(index: 1, name: 'CreatureFootstepID', description: 'CreatureFootstepID', format: DbcFieldFormat.intType),
    FieldDefinition(index: 2, name: 'TerrainSoundID', description: 'TerrainSoundID', format: DbcFieldFormat.intType),
    FieldDefinition(index: 3, name: 'SoundID', description: 'SoundID', format: DbcFieldFormat.intType),
    FieldDefinition(index: 4, name: 'SoundIDSplash', description: 'SoundIDSplash', format: DbcFieldFormat.intType),
  ],
);
