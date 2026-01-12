/// QuestFactionReward.dbc - 任务阵营奖励格式
library;

import '../base/field_definition.dart';
import '../base/structure_definition.dart';
import '../../core/field_format.dart';

/// QuestFactionReward 格式字符串
const String questFactionRewardFormat = 'niiiiiiiiii';

/// QuestFactionReward 结构定义
const DbcStructureDefinition questFactionReward = DbcStructureDefinition(
  name: 'QuestFactionReward',
  format: questFactionRewardFormat,
  fields: [
    FieldDefinition(index: 0, name: 'ID', description: 'ID', format: DbcFieldFormat.intType),
    FieldDefinition(index: 1, name: 'Reward1', description: '奖励 1', format: DbcFieldFormat.intType),
    FieldDefinition(index: 2, name: 'Reward2', description: '奖励 2', format: DbcFieldFormat.intType),
    FieldDefinition(index: 3, name: 'Reward3', description: '奖励 3', format: DbcFieldFormat.intType),
    FieldDefinition(index: 4, name: 'Reward4', description: '奖励 4', format: DbcFieldFormat.intType),
    FieldDefinition(index: 5, name: 'Reward5', description: '奖励 5', format: DbcFieldFormat.intType),
    FieldDefinition(index: 6, name: 'Reward6', description: '奖励 6', format: DbcFieldFormat.intType),
    FieldDefinition(index: 7, name: 'Reward7', description: '奖励 7', format: DbcFieldFormat.intType),
    FieldDefinition(index: 8, name: 'Reward8', description: '奖励 8', format: DbcFieldFormat.intType),
    FieldDefinition(index: 9, name: 'Reward9', description: '奖励 9', format: DbcFieldFormat.intType),
    FieldDefinition(index: 10, name: 'Reward10', description: '奖励 10', format: DbcFieldFormat.intType),
  ],
);
