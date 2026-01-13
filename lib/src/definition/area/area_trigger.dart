import 'package:warcrafty/src/internal/field.dart';
import 'package:warcrafty/src/internal/schema.dart';

/// AreaTrigger 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
const areaTrigger = DbcSchema(
  name: 'AreaTrigger',
  format: 'niffffffff',
  fields: [
    Field(index: 0, name: 'ID', description: 'ID', type: FieldType.id),
    Field(index: 1, name: 'ContinentID', description: 'ContinentID', type: FieldType.int32),
    Field(index: 2, name: 'Pos0', description: 'Pos 0', type: FieldType.float),
    Field(index: 3, name: 'Pos1', description: 'Pos 1', type: FieldType.float),
    Field(index: 4, name: 'Pos2', description: 'Pos 2', type: FieldType.float),
    Field(index: 5, name: 'Radius', description: 'Radius', type: FieldType.float),
    Field(index: 6, name: 'Box_length', description: 'Box_length', type: FieldType.float),
    Field(index: 7, name: 'Box_width', description: 'Box_width', type: FieldType.float),
    Field(index: 8, name: 'Box_height', description: 'Box_height', type: FieldType.float),
    Field(index: 9, name: 'Box_yaw', description: 'Box_yaw', type: FieldType.float),
  ],
);
