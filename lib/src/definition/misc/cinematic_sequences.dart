import 'package:warcrafty/src/internal/field.dart';
import 'package:warcrafty/src/internal/schema.dart';

/// CinematicSequences 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
const cinematicSequences = DbcSchema(
  name: 'CinematicSequences',
  format: 'niiiiiiiii',
  fields: [
    Field(index: 0, name: 'ID', description: 'ID', type: FieldType.id),
    Field(index: 1, name: 'SoundID', description: 'SoundID', type: FieldType.int32),
    Field(index: 2, name: 'Camera0', description: 'Camera 0', type: FieldType.int32),
    Field(index: 3, name: 'Camera1', description: 'Camera 1', type: FieldType.int32),
    Field(index: 4, name: 'Camera2', description: 'Camera 2', type: FieldType.int32),
    Field(index: 5, name: 'Camera3', description: 'Camera 3', type: FieldType.int32),
    Field(index: 6, name: 'Camera4', description: 'Camera 4', type: FieldType.int32),
    Field(index: 7, name: 'Camera5', description: 'Camera 5', type: FieldType.int32),
    Field(index: 8, name: 'Camera6', description: 'Camera 6', type: FieldType.int32),
    Field(index: 9, name: 'Camera7', description: 'Camera 7', type: FieldType.int32),
  ],
);
