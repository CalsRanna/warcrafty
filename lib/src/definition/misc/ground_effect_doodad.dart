import 'package:warcrafty/src/schema/field.dart';
import 'package:warcrafty/src/schema/schema.dart';

/// GroundEffectDoodad 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
const groundEffectDoodad = DbcSchema(
  name: 'GroundEffectDoodad',
  format: 'nsi',
  fields: [
    Field(index: 0, name: 'ID', description: 'ID', type: FieldType.id),
    Field(index: 1, name: 'Doodadpath', description: 'Doodadpath', type: FieldType.string),
    Field(index: 2, name: 'Flags', description: 'Flags', type: FieldType.int32),
  ],
);
