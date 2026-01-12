import 'package:warcrafty/src/schema/field.dart';
import 'package:warcrafty/src/schema/schema.dart';

/// ScreenEffect 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
const screenEffect = DbcSchema(
  name: 'ScreenEffect',
  format: 'nsiiiiiiii',
  fields: [
    Field(index: 0, name: 'ID', description: 'ID', type: FieldType.id),
    Field(index: 1, name: 'Name', description: 'Name', type: FieldType.string),
    Field(index: 2, name: 'Effect', description: 'Effect', type: FieldType.int32),
    Field(index: 3, name: 'Param0', description: 'Param 0', type: FieldType.int32),
    Field(index: 4, name: 'Param1', description: 'Param 1', type: FieldType.int32),
    Field(index: 5, name: 'Param2', description: 'Param 2', type: FieldType.int32),
    Field(index: 6, name: 'Param3', description: 'Param 3', type: FieldType.int32),
    Field(index: 7, name: 'LightParamsID', description: 'LightParamsID', type: FieldType.int32),
    Field(index: 8, name: 'SoundAmbienceID', description: 'SoundAmbienceID', type: FieldType.int32),
    Field(index: 9, name: 'ZoneMusicID', description: 'ZoneMusicID', type: FieldType.int32),
  ],
);
