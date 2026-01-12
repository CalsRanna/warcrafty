import 'package:warcrafty/src/schema/field.dart';
import 'package:warcrafty/src/schema/schema.dart';

/// TransportRotation 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
const transportRotation = DbcSchema(
  name: 'TransportRotation',
  format: 'niiffff',
  fields: [
    Field(index: 0, name: 'ID', description: 'ID', type: FieldType.id),
    Field(index: 1, name: 'GameObjectsID', description: 'GameObjectsID', type: FieldType.int32),
    Field(index: 2, name: 'TimeIndex', description: 'TimeIndex', type: FieldType.int32),
    Field(index: 3, name: 'Rot0', description: 'Rot 0', type: FieldType.float),
    Field(index: 4, name: 'Rot1', description: 'Rot 1', type: FieldType.float),
    Field(index: 5, name: 'Rot2', description: 'Rot 2', type: FieldType.float),
    Field(index: 6, name: 'Rot3', description: 'Rot 3', type: FieldType.float),
  ],
);
