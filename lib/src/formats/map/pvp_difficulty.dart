/// PvPDifficulty.dbc - PvP 难度格式
library;

import '../base/field_definition.dart';
import '../base/structure_definition.dart';
import '../../core/field_format.dart';

/// PvPDifficulty 格式字符串
const String pvpDifficultyFormat = 'diiiii';

/// PvPDifficulty 结构定义
const DbcStructureDefinition pvpDifficulty = DbcStructureDefinition(
  name: 'PvPDifficulty',
  format: pvpDifficultyFormat,
  fields: [
    FieldDefinition(index: 0, name: 'SortValue', description: '排序值', format: DbcFieldFormat.sort),
    FieldDefinition(index: 1, name: 'MapID', description: '地图 ID', format: DbcFieldFormat.intType),
    FieldDefinition(index: 2, name: 'BracketID', description: '等级 ID', format: DbcFieldFormat.intType),
    FieldDefinition(index: 3, name: 'MinLevel', description: '最小等级', format: DbcFieldFormat.intType),
    FieldDefinition(index: 4, name: 'MaxLevel', description: '最大等级', format: DbcFieldFormat.intType),
    FieldDefinition(index: 5, name: 'Difficulty', description: '难度', format: DbcFieldFormat.intType),
  ],
);
