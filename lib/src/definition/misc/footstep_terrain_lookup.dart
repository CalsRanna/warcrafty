import 'package:warcrafty/src/schema/field.dart';
import 'package:warcrafty/src/schema/schema.dart';

/// FootstepTerrainLookup 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
const footstepTerrainLookup = DbcSchema(
  name: 'FootstepTerrainLookup',
  format: 'niiii',
  fields: [
    Field(index: 0, name: 'ID', description: 'ID', type: FieldType.id),
    Field(index: 1, name: 'CreatureFootstepID', description: 'CreatureFootstepID', type: FieldType.int32),
    Field(index: 2, name: 'TerrainSoundID', description: 'TerrainSoundID', type: FieldType.int32),
    Field(index: 3, name: 'SoundID', description: 'SoundID', type: FieldType.int32),
    Field(index: 4, name: 'SoundIDSplash', description: 'SoundIDSplash', type: FieldType.int32),
  ],
);
