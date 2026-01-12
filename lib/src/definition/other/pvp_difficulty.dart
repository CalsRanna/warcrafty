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
    FieldDefinition(index: 0, name: 'MapID', description: '地图 ID', format: DbcFieldFormat.sort),
    FieldDefinition(index: 1, name: 'BracketID', description: '级别 ID', format: DbcFieldFormat.intType),
    FieldDefinition(index: 2, name: 'MinLevel', description: '最低等级', format: DbcFieldFormat.intType),
    FieldDefinition(index: 3, name: 'MaxLevel', description: '最高等级', format: DbcFieldFormat.intType),
    FieldDefinition(index: 4, name: 'Unknown1', description: '未知1', format: DbcFieldFormat.intType),
  ],
);
