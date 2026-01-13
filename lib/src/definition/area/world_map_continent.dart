import 'package:warcrafty/src/internal/field.dart';
import 'package:warcrafty/src/internal/schema.dart';

/// WorldMapContinent 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
const worldMapContinent = DbcSchema(
  name: 'WorldMapContinent',
  format: 'niiiiifffffffi',
  fields: [
    Field(index: 0, name: 'ID', description: 'ID', type: FieldType.id),
    Field(index: 1, name: 'MapID', description: 'MapID', type: FieldType.int32),
    Field(index: 2, name: 'LeftBoundary', description: 'LeftBoundary', type: FieldType.int32),
    Field(index: 3, name: 'RightBoundary', description: 'RightBoundary', type: FieldType.int32),
    Field(index: 4, name: 'TopBoundary', description: 'TopBoundary', type: FieldType.int32),
    Field(index: 5, name: 'BottomBoundary', description: 'BottomBoundary', type: FieldType.int32),
    Field(index: 6, name: 'ContinentOffset0', description: 'ContinentOffset 0', type: FieldType.float),
    Field(index: 7, name: 'ContinentOffset1', description: 'ContinentOffset 1', type: FieldType.float),
    Field(index: 8, name: 'Scale', description: 'Scale', type: FieldType.float),
    Field(index: 9, name: 'TaxiMin0', description: 'TaxiMin 0', type: FieldType.float),
    Field(index: 10, name: 'TaxiMin1', description: 'TaxiMin 1', type: FieldType.float),
    Field(index: 11, name: 'TaxiMax0', description: 'TaxiMax 0', type: FieldType.float),
    Field(index: 12, name: 'TaxiMax1', description: 'TaxiMax 1', type: FieldType.float),
    Field(index: 13, name: 'WorldMapID', description: 'WorldMapID', type: FieldType.int32),
  ],
);
