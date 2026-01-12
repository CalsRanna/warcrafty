/// QuestXP.dbc - 任务经验值格式
library;

import '../base/field_definition.dart';
import '../base/structure_definition.dart';
import '../../core/field_format.dart';

/// QuestXP 格式字符串
const String questXpFormat = 'niiiiiiiiii';

/// QuestXP 结构定义
const DbcStructureDefinition questXp = DbcStructureDefinition(
  name: 'QuestXP',
  format: questXpFormat,
  fields: [
    FieldDefinition(index: 0, name: 'ID', description: 'ID', format: DbcFieldFormat.intType),
    FieldDefinition(index: 1, name: 'Level1', description: '等级 1', format: DbcFieldFormat.intType),
    FieldDefinition(index: 2, name: 'Level2', description: '等级 2', format: DbcFieldFormat.intType),
    FieldDefinition(index: 3, name: 'Level3', description: '等级 3', format: DbcFieldFormat.intType),
    FieldDefinition(index: 4, name: 'Level4', description: '等级 4', format: DbcFieldFormat.intType),
    FieldDefinition(index: 5, name: 'Level5', description: '等级 5', format: DbcFieldFormat.intType),
    FieldDefinition(index: 6, name: 'Level6', description: '等级 6', format: DbcFieldFormat.intType),
    FieldDefinition(index: 7, name: 'Level7', description: '等级 7', format: DbcFieldFormat.intType),
    FieldDefinition(index: 8, name: 'Level8', description: '等级 8', format: DbcFieldFormat.intType),
    FieldDefinition(index: 9, name: 'Level9', description: '等级 9', format: DbcFieldFormat.intType),
    FieldDefinition(index: 10, name: 'Level10', description: '等级 10', format: DbcFieldFormat.intType),
  ],
);
