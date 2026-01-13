import 'package:warcrafty/src/internal/field.dart';
import 'package:warcrafty/src/internal/schema.dart';

/// EmotesTextSound 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
const emotesTextSound = DbcSchema(
  name: 'EmotesTextSound',
  format: 'niiii',
  fields: [
    Field(index: 0, name: 'ID', description: 'ID', type: FieldType.id),
    Field(index: 1, name: 'EmotesTextID', description: 'EmotesTextID', type: FieldType.int32),
    Field(index: 2, name: 'RaceID', description: 'RaceID', type: FieldType.int32),
    Field(index: 3, name: 'SexID', description: 'SexID', type: FieldType.int32),
    Field(index: 4, name: 'SoundID', description: 'SoundID', type: FieldType.int32),
  ],
);
