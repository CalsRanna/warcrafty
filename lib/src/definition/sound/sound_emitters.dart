import 'package:warcrafty/src/schema/field.dart';
import 'package:warcrafty/src/schema/schema.dart';

/// SoundEmitters 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
const soundEmitters = DbcSchema(
  name: 'SoundEmitters',
  format: 'nffffffiis',
  fields: [
    Field(index: 0, name: 'ID', description: 'ID', type: FieldType.id),
    Field(index: 1, name: 'Position0', description: 'Position 0', type: FieldType.float),
    Field(index: 2, name: 'Position1', description: 'Position 1', type: FieldType.float),
    Field(index: 3, name: 'Position2', description: 'Position 2', type: FieldType.float),
    Field(index: 4, name: 'Direction0', description: 'Direction 0', type: FieldType.float),
    Field(index: 5, name: 'Direction1', description: 'Direction 1', type: FieldType.float),
    Field(index: 6, name: 'Direction2', description: 'Direction 2', type: FieldType.float),
    Field(index: 7, name: 'SoundEntryAdvancedID', description: 'SoundEntryAdvancedID', type: FieldType.int32),
    Field(index: 8, name: 'MapID', description: 'MapID', type: FieldType.int32),
    Field(index: 9, name: 'Name', description: 'Name', type: FieldType.string),
  ],
);
