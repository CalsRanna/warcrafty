import 'package:warcrafty/src/schema/field.dart';
import 'package:warcrafty/src/schema/schema.dart';

/// Light 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
const light = DbcSchema(
  name: 'Light',
  format: 'nifffffiiiiiiii',
  fields: [
    Field(index: 0, name: 'ID', description: 'ID', type: FieldType.id),
    Field(index: 1, name: 'ContinentID', description: 'ContinentID', type: FieldType.int32),
    Field(index: 2, name: 'GameCoords0', description: 'GameCoords 0', type: FieldType.float),
    Field(index: 3, name: 'GameCoords1', description: 'GameCoords 1', type: FieldType.float),
    Field(index: 4, name: 'GameCoords2', description: 'GameCoords 2', type: FieldType.float),
    Field(index: 5, name: 'GameFalloffStart', description: 'GameFalloffStart', type: FieldType.float),
    Field(index: 6, name: 'GameFalloffEnd', description: 'GameFalloffEnd', type: FieldType.float),
    Field(index: 7, name: 'LightParamsID0', description: 'LightParamsID 0', type: FieldType.int32),
    Field(index: 8, name: 'LightParamsID1', description: 'LightParamsID 1', type: FieldType.int32),
    Field(index: 9, name: 'LightParamsID2', description: 'LightParamsID 2', type: FieldType.int32),
    Field(index: 10, name: 'LightParamsID3', description: 'LightParamsID 3', type: FieldType.int32),
    Field(index: 11, name: 'LightParamsID4', description: 'LightParamsID 4', type: FieldType.int32),
    Field(index: 12, name: 'LightParamsID5', description: 'LightParamsID 5', type: FieldType.int32),
    Field(index: 13, name: 'LightParamsID6', description: 'LightParamsID 6', type: FieldType.int32),
    Field(index: 14, name: 'LightParamsID7', description: 'LightParamsID 7', type: FieldType.int32),
  ],
);
