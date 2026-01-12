import 'package:warcrafty/src/schema/field.dart';
import 'package:warcrafty/src/schema/schema.dart';

/// SpellDifficulty 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
const spellDifficulty = DbcSchema(
  name: 'SpellDifficulty',
  format: 'niiii',
  fields: [
    Field(index: 0, name: 'ID', description: 'ID', type: FieldType.id),
    Field(index: 1, name: 'DifficultySpellID0', description: 'DifficultySpellID 0', type: FieldType.int32),
    Field(index: 2, name: 'DifficultySpellID1', description: 'DifficultySpellID 1', type: FieldType.int32),
    Field(index: 3, name: 'DifficultySpellID2', description: 'DifficultySpellID 2', type: FieldType.int32),
    Field(index: 4, name: 'DifficultySpellID3', description: 'DifficultySpellID 3', type: FieldType.int32),
  ],
);
