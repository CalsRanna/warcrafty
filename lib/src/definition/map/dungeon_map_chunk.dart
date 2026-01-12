import 'package:warcrafty/src/schema/field.dart';
import 'package:warcrafty/src/schema/schema.dart';

/// DungeonMapChunk 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
const dungeonMapChunk = DbcSchema(
  name: 'DungeonMapChunk',
  format: 'niiif',
  fields: [
    Field(index: 0, name: 'ID', description: 'ID', type: FieldType.id),
    Field(index: 1, name: 'MapID', description: 'MapID', type: FieldType.int32),
    Field(index: 2, name: 'WMOGroupID', description: 'WMOGroupID', type: FieldType.int32),
    Field(index: 3, name: 'DungeonMapID', description: 'DungeonMapID', type: FieldType.int32),
    Field(index: 4, name: 'MinZ', description: 'MinZ', type: FieldType.float),
  ],
);
