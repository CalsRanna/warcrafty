import 'package:warcrafty/src/core/field_definition.dart';
import 'package:warcrafty/src/core/structure_definition.dart';
import 'package:warcrafty/src/core/field_format.dart';

/// LightParams 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
const lightParams = DbcStructureDefinition(
  name: 'LightParams',
  format: 'niifffffi',
  fields: [
    FieldDefinition(index: 0, name: 'ID', description: 'ID', format: DbcFieldFormat.indexField),
    FieldDefinition(index: 1, name: 'HighlightSky', description: 'HighlightSky', format: DbcFieldFormat.intType),
    FieldDefinition(index: 2, name: 'LightSkyboxID', description: 'LightSkyboxID', format: DbcFieldFormat.intType),
    FieldDefinition(index: 3, name: 'Glow', description: 'Glow', format: DbcFieldFormat.float),
    FieldDefinition(index: 4, name: 'WaterShallowAlpha', description: 'WaterShallowAlpha', format: DbcFieldFormat.float),
    FieldDefinition(index: 5, name: 'WaterDeepAlpha', description: 'WaterDeepAlpha', format: DbcFieldFormat.float),
    FieldDefinition(index: 6, name: 'OceanShallowAlpha', description: 'OceanShallowAlpha', format: DbcFieldFormat.float),
    FieldDefinition(index: 7, name: 'OceanDeepAlpha', description: 'OceanDeepAlpha', format: DbcFieldFormat.float),
    FieldDefinition(index: 8, name: 'Flags', description: 'Flags', format: DbcFieldFormat.intType),
  ],
);
