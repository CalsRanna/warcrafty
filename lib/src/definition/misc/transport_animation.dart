import 'package:warcrafty/src/internal/field.dart';
import 'package:warcrafty/src/internal/schema.dart';

/// TransportAnimation 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
const transportAnimation = DbcSchema(
  name: 'TransportAnimation',
  format: 'niifffi',
  fields: [
    Field(index: 0, name: 'ID', description: 'ID', type: FieldType.id),
    Field(index: 1, name: 'TransportID', description: 'TransportID', type: FieldType.int32),
    Field(index: 2, name: 'TimeIndex', description: 'TimeIndex', type: FieldType.int32),
    Field(index: 3, name: 'Pos0', description: 'Pos 0', type: FieldType.float),
    Field(index: 4, name: 'Pos1', description: 'Pos 1', type: FieldType.float),
    Field(index: 5, name: 'Pos2', description: 'Pos 2', type: FieldType.float),
    Field(index: 6, name: 'SequenceID', description: 'SequenceID', type: FieldType.int32),
  ],
);
