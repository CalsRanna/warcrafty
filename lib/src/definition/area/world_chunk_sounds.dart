import 'package:warcrafty/src/internal/field.dart';
import 'package:warcrafty/src/internal/schema.dart';

/// WorldChunkSounds 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
const worldChunkSounds = DbcSchema(
  name: 'WorldChunkSounds',
  format: 'niiiiiiii',
  fields: [
    Field(index: 0, name: 'ID', description: 'ID', type: FieldType.id),
    Field(index: 1, name: 'ChunkX', description: 'ChunkX', type: FieldType.int32),
    Field(index: 2, name: 'ChunkY', description: 'ChunkY', type: FieldType.int32),
    Field(index: 3, name: 'SubchunkX', description: 'SubchunkX', type: FieldType.int32),
    Field(index: 4, name: 'SubchunkY', description: 'SubchunkY', type: FieldType.int32),
    Field(index: 5, name: 'ZoneIntroMusicID', description: 'ZoneIntroMusicID', type: FieldType.int32),
    Field(index: 6, name: 'ZoneMusicID', description: 'ZoneMusicID', type: FieldType.int32),
    Field(index: 7, name: 'SoundAmbienceID', description: 'SoundAmbienceID', type: FieldType.int32),
    Field(index: 8, name: 'SoundProviderPreferencesID', description: 'SoundProviderPreferencesID', type: FieldType.int32),
  ],
);
