import 'package:warcrafty/src/schema/field.dart';
import 'package:warcrafty/src/schema/schema.dart';

/// DeathThudLookups 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
const deathThudLookups = DbcSchema(
  name: 'DeathThudLookups',
  format: 'niiii',
  fields: [
    Field(index: 0, name: 'ID', description: 'ID', type: FieldType.id),
    Field(index: 1, name: 'SizeClass', description: 'SizeClass', type: FieldType.int32),
    Field(index: 2, name: 'TerrainTypeSoundID', description: 'TerrainTypeSoundID', type: FieldType.int32),
    Field(index: 3, name: 'SoundEntryID', description: 'SoundEntryID', type: FieldType.int32),
    Field(index: 4, name: 'SoundEntryIDWater', description: 'SoundEntryIDWater', type: FieldType.int32),
  ],
);
