import 'package:warcrafty/src/internal/field.dart';
import 'package:warcrafty/src/internal/schema.dart';

/// LightParams 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
const lightParams = DbcSchema(
  name: 'LightParams',
  format: 'niifffffi',
  fields: [
    Field(index: 0, name: 'ID', description: 'ID', type: FieldType.id),
    Field(index: 1, name: 'HighlightSky', description: 'HighlightSky', type: FieldType.int32),
    Field(index: 2, name: 'LightSkyboxID', description: 'LightSkyboxID', type: FieldType.int32),
    Field(index: 3, name: 'Glow', description: 'Glow', type: FieldType.float),
    Field(index: 4, name: 'WaterShallowAlpha', description: 'WaterShallowAlpha', type: FieldType.float),
    Field(index: 5, name: 'WaterDeepAlpha', description: 'WaterDeepAlpha', type: FieldType.float),
    Field(index: 6, name: 'OceanShallowAlpha', description: 'OceanShallowAlpha', type: FieldType.float),
    Field(index: 7, name: 'OceanDeepAlpha', description: 'OceanDeepAlpha', type: FieldType.float),
    Field(index: 8, name: 'Flags', description: 'Flags', type: FieldType.int32),
  ],
);
