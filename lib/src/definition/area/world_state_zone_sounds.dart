import 'package:warcrafty/src/core/field_definition.dart';
import 'package:warcrafty/src/core/structure_definition.dart';
import 'package:warcrafty/src/core/field_format.dart';

/// WorldStateZoneSounds 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
const worldStateZoneSounds = DbcStructureDefinition(
  name: 'WorldStateZoneSounds',
  format: 'iiiiiiii',
  fields: [
    FieldDefinition(index: 0, name: 'WorldStateID', description: 'WorldStateID', format: DbcFieldFormat.intType),
    FieldDefinition(index: 1, name: 'WorldStateValue', description: 'WorldStateValue', format: DbcFieldFormat.intType),
    FieldDefinition(index: 2, name: 'AreaID', description: 'AreaID', format: DbcFieldFormat.intType),
    FieldDefinition(index: 3, name: 'WMOAreaID', description: 'WMOAreaID', format: DbcFieldFormat.intType),
    FieldDefinition(index: 4, name: 'ZoneIntroMusicID', description: 'ZoneIntroMusicID', format: DbcFieldFormat.intType),
    FieldDefinition(index: 5, name: 'ZoneMusicID', description: 'ZoneMusicID', format: DbcFieldFormat.intType),
    FieldDefinition(index: 6, name: 'SoundAmbienceID', description: 'SoundAmbienceID', format: DbcFieldFormat.intType),
    FieldDefinition(index: 7, name: 'SoundProviderPreferencesID', description: 'SoundProviderPreferencesID', format: DbcFieldFormat.intType),
  ],
);
