import 'package:warcrafty/src/schema/field.dart';
import 'package:warcrafty/src/schema/schema.dart';

/// GameObjectDisplayInfo 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
const gameObjectDisplayInfo = DbcSchema(
  name: 'GameObjectDisplayInfo',
  format: 'nsiiiiiiiiiiffffffi',
  fields: [
    Field(index: 0, name: 'ID', description: 'ID', type: FieldType.id),
    Field(index: 1, name: 'ModelName', description: 'ModelName', type: FieldType.string),
    Field(index: 2, name: 'Sound0', description: 'Sound 0', type: FieldType.int32),
    Field(index: 3, name: 'Sound1', description: 'Sound 1', type: FieldType.int32),
    Field(index: 4, name: 'Sound2', description: 'Sound 2', type: FieldType.int32),
    Field(index: 5, name: 'Sound3', description: 'Sound 3', type: FieldType.int32),
    Field(index: 6, name: 'Sound4', description: 'Sound 4', type: FieldType.int32),
    Field(index: 7, name: 'Sound5', description: 'Sound 5', type: FieldType.int32),
    Field(index: 8, name: 'Sound6', description: 'Sound 6', type: FieldType.int32),
    Field(index: 9, name: 'Sound7', description: 'Sound 7', type: FieldType.int32),
    Field(index: 10, name: 'Sound8', description: 'Sound 8', type: FieldType.int32),
    Field(index: 11, name: 'Sound9', description: 'Sound 9', type: FieldType.int32),
    Field(index: 12, name: 'GeoBoxMin0', description: 'GeoBoxMin 0', type: FieldType.float),
    Field(index: 13, name: 'GeoBoxMin1', description: 'GeoBoxMin 1', type: FieldType.float),
    Field(index: 14, name: 'GeoBoxMin2', description: 'GeoBoxMin 2', type: FieldType.float),
    Field(index: 15, name: 'GeoBoxMax0', description: 'GeoBoxMax 0', type: FieldType.float),
    Field(index: 16, name: 'GeoBoxMax1', description: 'GeoBoxMax 1', type: FieldType.float),
    Field(index: 17, name: 'GeoBoxMax2', description: 'GeoBoxMax 2', type: FieldType.float),
    Field(index: 18, name: 'ObjectEffectPackageID', description: 'ObjectEffectPackageID', type: FieldType.int32),
  ],
);
