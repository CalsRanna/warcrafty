import 'package:warcrafty/src/internal/field.dart';
import 'package:warcrafty/src/internal/schema.dart';

/// TerrainType 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
const terrainType = DbcSchema(
  name: 'TerrainType',
  format: 'isiiii',
  fields: [
    Field(index: 0, name: 'TerrainID', description: 'TerrainID', type: FieldType.int32),
    Field(index: 1, name: 'TerrainDesc', description: 'TerrainDesc', type: FieldType.string),
    Field(index: 2, name: 'FootstepSprayRun', description: 'FootstepSprayRun', type: FieldType.int32),
    Field(index: 3, name: 'FootstepSprayWalk', description: 'FootstepSprayWalk', type: FieldType.int32),
    Field(index: 4, name: 'SoundID', description: 'SoundID', type: FieldType.int32),
    Field(index: 5, name: 'Flags', description: 'Flags', type: FieldType.int32),
  ],
);
