import 'package:warcrafty/src/schema/field.dart';
import 'package:warcrafty/src/schema/schema.dart';

/// VocalUISounds 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
const vocalUISounds = DbcSchema(
  name: 'VocalUISounds',
  format: 'niiiiii',
  fields: [
    Field(index: 0, name: 'ID', description: 'ID', type: FieldType.id),
    Field(index: 1, name: 'VocalUIEnum', description: 'VocalUIEnum', type: FieldType.int32),
    Field(index: 2, name: 'RaceID', description: 'RaceID', type: FieldType.int32),
    Field(index: 3, name: 'NormalSoundID0', description: 'NormalSoundID 0', type: FieldType.int32),
    Field(index: 4, name: 'NormalSoundID1', description: 'NormalSoundID 1', type: FieldType.int32),
    Field(index: 5, name: 'PissedSoundID0', description: 'PissedSoundID 0', type: FieldType.int32),
    Field(index: 6, name: 'PissedSoundID1', description: 'PissedSoundID 1', type: FieldType.int32),
  ],
);
