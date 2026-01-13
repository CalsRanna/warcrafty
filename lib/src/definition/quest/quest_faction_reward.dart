import 'package:warcrafty/src/internal/field.dart';
import 'package:warcrafty/src/internal/schema.dart';

/// QuestFactionReward 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
const questFactionReward = DbcSchema(
  name: 'QuestFactionReward',
  format: 'niiiiiiiiii',
  fields: [
    Field(index: 0, name: 'ID', description: 'ID', type: FieldType.id),
    Field(index: 1, name: 'Difficulty0', description: 'Difficulty 0', type: FieldType.int32),
    Field(index: 2, name: 'Difficulty1', description: 'Difficulty 1', type: FieldType.int32),
    Field(index: 3, name: 'Difficulty2', description: 'Difficulty 2', type: FieldType.int32),
    Field(index: 4, name: 'Difficulty3', description: 'Difficulty 3', type: FieldType.int32),
    Field(index: 5, name: 'Difficulty4', description: 'Difficulty 4', type: FieldType.int32),
    Field(index: 6, name: 'Difficulty5', description: 'Difficulty 5', type: FieldType.int32),
    Field(index: 7, name: 'Difficulty6', description: 'Difficulty 6', type: FieldType.int32),
    Field(index: 8, name: 'Difficulty7', description: 'Difficulty 7', type: FieldType.int32),
    Field(index: 9, name: 'Difficulty8', description: 'Difficulty 8', type: FieldType.int32),
    Field(index: 10, name: 'Difficulty9', description: 'Difficulty 9', type: FieldType.int32),
  ],
);
