import 'package:warcrafty/src/internal/field.dart';
import 'package:warcrafty/src/internal/schema.dart';

/// WorldStateZoneSounds 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
const worldStateZoneSounds = DbcSchema(
  name: 'WorldStateZoneSounds',
  format: 'iiiiiiii',
  fields: [
    Field(index: 0, name: 'WorldStateID', description: 'WorldStateID', type: FieldType.int32),
    Field(index: 1, name: 'WorldStateValue', description: 'WorldStateValue', type: FieldType.int32),
    Field(index: 2, name: 'AreaID', description: 'AreaID', type: FieldType.int32),
    Field(index: 3, name: 'WMOAreaID', description: 'WMOAreaID', type: FieldType.int32),
    Field(index: 4, name: 'ZoneIntroMusicID', description: 'ZoneIntroMusicID', type: FieldType.int32),
    Field(index: 5, name: 'ZoneMusicID', description: 'ZoneMusicID', type: FieldType.int32),
    Field(index: 6, name: 'SoundAmbienceID', description: 'SoundAmbienceID', type: FieldType.int32),
    Field(index: 7, name: 'SoundProviderPreferencesID', description: 'SoundProviderPreferencesID', type: FieldType.int32),
  ],
);
