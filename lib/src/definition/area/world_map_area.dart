import 'package:warcrafty/src/internal/field.dart';
import 'package:warcrafty/src/internal/schema.dart';

/// WorldMapArea 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
const worldMapArea = DbcSchema(
  name: 'WorldMapArea',
  format: 'niisffffiii',
  fields: [
    Field(index: 0, name: 'ID', description: 'ID', type: FieldType.id),
    Field(index: 1, name: 'MapID', description: 'MapID', type: FieldType.int32),
    Field(index: 2, name: 'AreaID', description: 'AreaID', type: FieldType.int32),
    Field(index: 3, name: 'AreaName', description: 'AreaName', type: FieldType.string),
    Field(index: 4, name: 'LocLeft', description: 'LocLeft', type: FieldType.float),
    Field(index: 5, name: 'LocRight', description: 'LocRight', type: FieldType.float),
    Field(index: 6, name: 'LocTop', description: 'LocTop', type: FieldType.float),
    Field(index: 7, name: 'LocBottom', description: 'LocBottom', type: FieldType.float),
    Field(index: 8, name: 'DisplayMapID', description: 'DisplayMapID', type: FieldType.int32),
    Field(index: 9, name: 'DefaultDungeonFloor', description: 'DefaultDungeonFloor', type: FieldType.int32),
    Field(index: 10, name: 'ParentWorldMapID', description: 'ParentWorldMapID', type: FieldType.int32),
  ],
);
