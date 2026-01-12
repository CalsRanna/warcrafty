import 'package:warcrafty/src/schema/field.dart';
import 'package:warcrafty/src/schema/schema.dart';

/// TerrainTypeSounds 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
const terrainTypeSounds = DbcSchema(
  name: 'TerrainTypeSounds',
  format: 'n',
  fields: [
    Field(index: 0, name: 'ID', description: 'ID', type: FieldType.id),
  ],
);
