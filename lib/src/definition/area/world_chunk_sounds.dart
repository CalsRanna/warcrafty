import 'package:warcrafty/src/core/field_definition.dart';
import 'package:warcrafty/src/core/structure_definition.dart';
import 'package:warcrafty/src/core/field_format.dart';

/// WorldChunkSounds 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
const worldChunkSounds = DbcStructureDefinition(
  name: 'WorldChunkSounds',
  format: 'niiiiiiii',
  fields: [
    FieldDefinition(index: 0, name: 'ID', description: 'ID', format: DbcFieldFormat.indexField),
    FieldDefinition(index: 1, name: 'ChunkX', description: 'ChunkX', format: DbcFieldFormat.intType),
    FieldDefinition(index: 2, name: 'ChunkY', description: 'ChunkY', format: DbcFieldFormat.intType),
    FieldDefinition(index: 3, name: 'SubchunkX', description: 'SubchunkX', format: DbcFieldFormat.intType),
    FieldDefinition(index: 4, name: 'SubchunkY', description: 'SubchunkY', format: DbcFieldFormat.intType),
    FieldDefinition(index: 5, name: 'ZoneIntroMusicID', description: 'ZoneIntroMusicID', format: DbcFieldFormat.intType),
    FieldDefinition(index: 6, name: 'ZoneMusicID', description: 'ZoneMusicID', format: DbcFieldFormat.intType),
    FieldDefinition(index: 7, name: 'SoundAmbienceID', description: 'SoundAmbienceID', format: DbcFieldFormat.intType),
    FieldDefinition(index: 8, name: 'SoundProviderPreferencesID', description: 'SoundProviderPreferencesID', format: DbcFieldFormat.intType),
  ],
);
