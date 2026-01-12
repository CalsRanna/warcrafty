/// TaxiNodes.dbc - 出租车节点格式
library;

import '../base/field_definition.dart';
import '../base/structure_definition.dart';
import '../../core/field_format.dart';

/// TaxiNodes 格式字符串
const String taxiNodesFormat = 'nifffssssssssssssssssxii';

/// TaxiNodes 结构定义
const DbcStructureDefinition taxiNodes = DbcStructureDefinition(
  name: 'TaxiNodes',
  format: taxiNodesFormat,
  fields: [
    FieldDefinition(index: 0, name: 'ID', description: '节点 ID', format: DbcFieldFormat.intType),
    FieldDefinition(index: 1, name: 'MapID', description: '地图 ID', format: DbcFieldFormat.intType),
    FieldDefinition(index: 2, name: 'X', description: 'X 坐标', format: DbcFieldFormat.float),
    FieldDefinition(index: 3, name: 'Y', description: 'Y 坐标', format: DbcFieldFormat.float),
    FieldDefinition(index: 4, name: 'Z', description: 'Z 坐标', format: DbcFieldFormat.float),
    FieldDefinition(index: 5, name: 'Name_enUS', description: '英文名称', format: DbcFieldFormat.string),
    FieldDefinition(index: 6, name: 'Name_enGB', description: '英式英文名称', format: DbcFieldFormat.string),
    FieldDefinition(index: 7, name: 'Name_koKR', description: '韩文名称', format: DbcFieldFormat.string),
    FieldDefinition(index: 8, name: 'Name_frFR', description: '法文名称', format: DbcFieldFormat.string),
    FieldDefinition(index: 9, name: 'Name_deDE', description: '德文名称', format: DbcFieldFormat.string),
    FieldDefinition(index: 10, name: 'Name_enCN', description: '简体中文名称', format: DbcFieldFormat.string),
    FieldDefinition(index: 11, name: 'Name_zhCN', description: '繁体中文名称', format: DbcFieldFormat.string),
    FieldDefinition(index: 12, name: 'Name_zhTW', description: '台湾繁体中文名称', format: DbcFieldFormat.string),
    FieldDefinition(index: 13, name: 'Name_esES', description: '西班牙文名称', format: DbcFieldFormat.string),
    FieldDefinition(index: 14, name: 'Name_esMX', description: '墨西哥西班牙文名称', format: DbcFieldFormat.string),
    FieldDefinition(index: 15, name: 'Name_ruRU', description: '俄文名称', format: DbcFieldFormat.string),
    FieldDefinition(index: 16, name: 'Name_ptBR', description: '葡萄牙文名称', format: DbcFieldFormat.string),
    FieldDefinition(index: 17, name: 'Name_itIT', description: '意大利文名称', format: DbcFieldFormat.string),
    FieldDefinition(index: 18, name: 'Name_ptPT', description: '葡萄牙葡萄牙文名称', format: DbcFieldFormat.string),
    FieldDefinition(index: 19, name: 'Name_unk', description: '未知语言名称', format: DbcFieldFormat.string),
    FieldDefinition(index: 20, name: 'Name_unk2', description: '未知语言名称 2', format: DbcFieldFormat.string),
    FieldDefinition(index: 21, name: 'Unused21', description: '未使用', format: DbcFieldFormat.na),
    FieldDefinition(index: 22, name: 'MountCreatureID0', description: '坐骑生物 ID 0', format: DbcFieldFormat.intType),
    FieldDefinition(index: 23, name: 'MountCreatureID1', description: '坐骑生物 ID 1', format: DbcFieldFormat.intType),
  ],
);
