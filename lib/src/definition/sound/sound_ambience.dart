import 'package:warcrafty/src/schema/field.dart';
import 'package:warcrafty/src/schema/schema.dart';

/// SoundAmbience 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
const soundAmbience = DbcSchema(
  name: 'SoundAmbience',
  format: 'nii',
  fields: [
    Field(index: 0, name: 'ID', description: 'ID', type: FieldType.id),
    Field(index: 1, name: 'AmbienceID0', description: 'AmbienceID 0', type: FieldType.int32),
    Field(index: 2, name: 'AmbienceID1', description: 'AmbienceID 1', type: FieldType.int32),
  ],
);
