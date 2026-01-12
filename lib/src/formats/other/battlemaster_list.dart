/// BattlemasterList.dbc - 战场列表格式
library;

import '../base/field_definition.dart';
import '../base/structure_definition.dart';
import '../../core/field_format.dart';

/// BattlemasterList 格式字符串
const String battlemasterListFormat = 'niiiiiiiiixssssssssssssssssxiixx';

/// BattlemasterList 结构定义
const DbcStructureDefinition battlemasterList = DbcStructureDefinition(
  name: 'BattlemasterList',
  format: battlemasterListFormat,
  fields: [
    FieldDefinition(index: 0, name: 'ID', description: '战场 ID', format: DbcFieldFormat.intType),
    FieldDefinition(index: 1, name: 'MapID1', description: '地图 ID 1', format: DbcFieldFormat.intType),
    FieldDefinition(index: 2, name: 'MapID2', description: '地图 ID 2', format: DbcFieldFormat.intType),
    FieldDefinition(index: 3, name: 'MapID3', description: '地图 ID 3', format: DbcFieldFormat.intType),
    FieldDefinition(index: 4, name: 'MapID4', description: '地图 ID 4', format: DbcFieldFormat.intType),
    FieldDefinition(index: 5, name: 'MapID5', description: '地图 ID 5', format: DbcFieldFormat.intType),
    FieldDefinition(index: 6, name: 'MapID6', description: '地图 ID 6', format: DbcFieldFormat.intType),
    FieldDefinition(index: 7, name: 'MapID7', description: '地图 ID 7', format: DbcFieldFormat.intType),
    FieldDefinition(index: 8, name: 'MapID8', description: '地图 ID 8', format: DbcFieldFormat.intType),
    FieldDefinition(index: 9, name: 'InstanceType', description: '实例类型', format: DbcFieldFormat.intType),
    FieldDefinition(index: 10, name: 'Name', description: '名称', format: DbcFieldFormat.string),
    FieldDefinition(index: 11, name: 'MaxPlayers', description: '最大玩家数', format: DbcFieldFormat.intType),
    FieldDefinition(index: 12, name: 'Unknown1', description: '未知1', format: DbcFieldFormat.na),
    FieldDefinition(index: 13, name: 'HolidayID', description: '假日 ID', format: DbcFieldFormat.intType),
    FieldDefinition(index: 14, name: 'Flags', description: '标志', format: DbcFieldFormat.intType),
  ],
);
