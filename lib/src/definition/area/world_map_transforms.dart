import 'package:warcrafty/src/internal/field.dart';
import 'package:warcrafty/src/internal/schema.dart';

/// WorldMapTransforms 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
const worldMapTransforms = DbcSchema(
  name: 'WorldMapTransforms',
  format: 'niffffiffi',
  fields: [
    Field(index: 0, name: 'ID', description: 'ID', type: FieldType.id),
    Field(index: 1, name: 'MapID', description: 'MapID', type: FieldType.int32),
    Field(index: 2, name: 'RegionMin0', description: 'RegionMin 0', type: FieldType.float),
    Field(index: 3, name: 'RegionMin1', description: 'RegionMin 1', type: FieldType.float),
    Field(index: 4, name: 'RegionMax0', description: 'RegionMax 0', type: FieldType.float),
    Field(index: 5, name: 'RegionMax1', description: 'RegionMax 1', type: FieldType.float),
    Field(index: 6, name: 'NewMapID', description: 'NewMapID', type: FieldType.int32),
    Field(index: 7, name: 'RegionOffset0', description: 'RegionOffset 0', type: FieldType.float),
    Field(index: 8, name: 'RegionOffset1', description: 'RegionOffset 1', type: FieldType.float),
    Field(index: 9, name: 'NewDungeonMapID', description: 'NewDungeonMapID', type: FieldType.int32),
  ],
);
