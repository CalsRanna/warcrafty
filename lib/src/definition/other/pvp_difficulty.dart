import 'package:warcrafty/src/definition/base/field_definition.dart';
import 'package:warcrafty/src/definition/base/structure_definition.dart';
import 'package:warcrafty/src/core/field_format.dart';

/// PvPDifficulty 格式字符串

/// PvPDifficulty 结构定义
const pvpDifficulty = DbcStructureDefinition(
  name: 'PvPDifficulty',
  format: 'diiiii',
  fields: [
    FieldDefinition(index: 0, name: 'MapID', description: '地图 ID', format: DbcFieldFormat.sort),
    FieldDefinition(index: 1, name: 'BracketID', description: '级别 ID', format: DbcFieldFormat.intType),
    FieldDefinition(index: 2, name: 'MinLevel', description: '最低等级', format: DbcFieldFormat.intType),
    FieldDefinition(index: 3, name: 'MaxLevel', description: '最高等级', format: DbcFieldFormat.intType),
    FieldDefinition(index: 4, name: 'Unknown1', description: '未知1', format: DbcFieldFormat.intType),
  ],
);
