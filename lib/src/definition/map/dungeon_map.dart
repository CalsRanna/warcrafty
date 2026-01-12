import 'package:warcrafty/src/schema/field.dart';
import 'package:warcrafty/src/schema/schema.dart';

/// DungeonMap 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
const dungeonMap = DbcSchema(
  name: 'DungeonMap',
  format: 'niiffffi',
  fields: [
    Field(index: 0, name: 'ID', description: 'ID', type: FieldType.id),
    Field(index: 1, name: 'MapID', description: 'MapID', type: FieldType.int32),
    Field(index: 2, name: 'FloorIndex', description: 'FloorIndex', type: FieldType.int32),
    Field(index: 3, name: 'MinX', description: 'MinX', type: FieldType.float),
    Field(index: 4, name: 'MaxX', description: 'MaxX', type: FieldType.float),
    Field(index: 5, name: 'MinY', description: 'MinY', type: FieldType.float),
    Field(index: 6, name: 'MaxY', description: 'MaxY', type: FieldType.float),
    Field(index: 7, name: 'ParentWorldMapID', description: 'ParentWorldMapID', type: FieldType.int32),
  ],
);
