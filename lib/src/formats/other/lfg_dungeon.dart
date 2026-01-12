/// LFGDungeon.dbc - 随机地牢格式
library;

import '../base/field_definition.dart';
import '../base/structure_definition.dart';
import '../../core/field_format.dart';

/// LFGDungeon 格式字符串
const String lfgDungeonFormat = 'nssssssssssssssssxiiiiiiiiixxixixxxxxxxxxxxxxxxxx';

/// LFGDungeon 结构定义
const DbcStructureDefinition lfgDungeon = DbcStructureDefinition(
  name: 'LFGDungeon',
  format: lfgDungeonFormat,
  fields: [
    FieldDefinition(index: 0, name: 'ID', description: 'ID', format: DbcFieldFormat.intType),
    FieldDefinition(index: 1, name: 'Name', description: '名称', format: DbcFieldFormat.string),
    FieldDefinition(index: 2, name: 'MinLevel', description: '最低等级', format: DbcFieldFormat.intType),
    FieldDefinition(index: 3, name: 'MaxLevel', description: '最高等级', format: DbcFieldFormat.intType),
    FieldDefinition(index: 4, name: 'TargetLevel', description: '目标等级', format: DbcFieldFormat.intType),
    FieldDefinition(index: 5, name: 'TargetLevelMin', description: '目标等级最小', format: DbcFieldFormat.intType),
    FieldDefinition(index: 6, name: 'TargetLevelMax', description: '目标等级最大', format: DbcFieldFormat.intType),
    FieldDefinition(index: 7, name: 'MapID', description: '地图 ID', format: DbcFieldFormat.intType),
    FieldDefinition(index: 8, name: 'Difficulty', description: '难度', format: DbcFieldFormat.intType),
    FieldDefinition(index: 9, name: 'Type', description: '类型', format: DbcFieldFormat.intType),
    FieldDefinition(index: 10, name: 'Unknown1', description: '未知1', format: DbcFieldFormat.intType),
    FieldDefinition(index: 11, name: 'Flags', description: '标志', format: DbcFieldFormat.intType),
  ],
);
