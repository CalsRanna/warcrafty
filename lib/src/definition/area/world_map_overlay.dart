import 'package:warcrafty/src/schema/field.dart';
import 'package:warcrafty/src/schema/schema.dart';

/// WorldMapOverlay 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
const worldMapOverlay = DbcSchema(
  name: 'WorldMapOverlay',
  format: 'niiiiiiisiiiiiiii',
  fields: [
    Field(index: 0, name: 'ID', description: 'ID', type: FieldType.id),
    Field(index: 1, name: 'MapAreaID', description: 'MapAreaID', type: FieldType.int32),
    Field(index: 2, name: 'AreaID0', description: 'AreaID 0', type: FieldType.int32),
    Field(index: 3, name: 'AreaID1', description: 'AreaID 1', type: FieldType.int32),
    Field(index: 4, name: 'AreaID2', description: 'AreaID 2', type: FieldType.int32),
    Field(index: 5, name: 'AreaID3', description: 'AreaID 3', type: FieldType.int32),
    Field(index: 6, name: 'MapPointX', description: 'MapPointX', type: FieldType.int32),
    Field(index: 7, name: 'MapPointY', description: 'MapPointY', type: FieldType.int32),
    Field(index: 8, name: 'TextureName', description: 'TextureName', type: FieldType.string),
    Field(index: 9, name: 'TextureWidth', description: 'TextureWidth', type: FieldType.int32),
    Field(index: 10, name: 'TextureHeight', description: 'TextureHeight', type: FieldType.int32),
    Field(index: 11, name: 'OffsetX', description: 'OffsetX', type: FieldType.int32),
    Field(index: 12, name: 'OffsetY', description: 'OffsetY', type: FieldType.int32),
    Field(index: 13, name: 'HitRectTop', description: 'HitRectTop', type: FieldType.int32),
    Field(index: 14, name: 'HitRectLeft', description: 'HitRectLeft', type: FieldType.int32),
    Field(index: 15, name: 'HitRectBottom', description: 'HitRectBottom', type: FieldType.int32),
    Field(index: 16, name: 'HitRectRight', description: 'HitRectRight', type: FieldType.int32),
  ],
);
