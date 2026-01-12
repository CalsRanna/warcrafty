import 'package:warcrafty/src/definition/base/field_definition.dart';
import 'package:warcrafty/src/definition/base/structure_definition.dart';
import 'package:warcrafty/src/core/field_format.dart';

/// MapDifficulty 格式字符串

/// MapDifficulty 结构定义
const mapDifficulty = DbcStructureDefinition(
  name: 'MapDifficulty',
  format: 'diisxxxxxxxxxxxxxxxxiix',
  fields: [
    FieldDefinition(index: 0, name: 'MapID', description: '地图 ID', format: DbcFieldFormat.sort),
    FieldDefinition(index: 1, name: 'Difficulty', description: '难度', format: DbcFieldFormat.intType),
    FieldDefinition(index: 2, name: 'ResetTime', description: '重置时间', format: DbcFieldFormat.intType),
    FieldDefinition(index: 3, name: 'MaxPlayers', description: '最大玩家数', format: DbcFieldFormat.string),
    FieldDefinition(index: 4, name: 'Message', description: '消息', format: DbcFieldFormat.na),
    FieldDefinition(index: 5, name: 'ExpandedMaxPlayers', description: '扩展最大玩家数', format: DbcFieldFormat.intType),
    FieldDefinition(index: 6, name: 'Unknown1', description: '未知1', format: DbcFieldFormat.intType),
  ],
);
