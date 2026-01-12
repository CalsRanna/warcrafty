import 'package:warcrafty/src/definition/base/field_definition.dart';
import 'package:warcrafty/src/definition/base/structure_definition.dart';
import 'package:warcrafty/src/core/field_format.dart';

/// AreaTable 格式字符串

/// AreaTable 结构定义
const areaTable = DbcStructureDefinition(
  name: 'AreaTable',
  format: 'niiiixxxxxissssssssssssssssxiiiiixxx',
  fields: [
    FieldDefinition(index: 0, name: 'ID', description: '区域 ID', format: DbcFieldFormat.intType),
    FieldDefinition(index: 1, name: 'MapID', description: '地图 ID', format: DbcFieldFormat.intType),
    FieldDefinition(index: 2, name: 'Zone', description: '区域 ID (0=主区域)', format: DbcFieldFormat.intType),
    FieldDefinition(index: 3, name: 'ExploreFlag', description: '探索标志', format: DbcFieldFormat.intType),
    FieldDefinition(index: 4, name: 'Flags', description: '标志', format: DbcFieldFormat.intType),
    FieldDefinition(index: 5, name: 'Unused5', description: '未使用', format: DbcFieldFormat.na),
    FieldDefinition(index: 6, name: 'Unused6', description: '未使用', format: DbcFieldFormat.na),
    FieldDefinition(index: 7, name: 'Unused7', description: '未使用', format: DbcFieldFormat.na),
    FieldDefinition(index: 8, name: 'Unused8', description: '未使用', format: DbcFieldFormat.na),
    FieldDefinition(index: 9, name: 'Unused9', description: '未使用', format: DbcFieldFormat.na),
    FieldDefinition(index: 10, name: 'AreaLevel', description: '区域等级', format: DbcFieldFormat.intType),
    FieldDefinition(index: 11, name: 'Name_enUS', description: '英文名称', format: DbcFieldFormat.string),
    FieldDefinition(index: 12, name: 'Name_enGB', description: '英式英文名称', format: DbcFieldFormat.string),
    FieldDefinition(index: 13, name: 'Name_koKR', description: '韩文名称', format: DbcFieldFormat.string),
    FieldDefinition(index: 14, name: 'Name_frFR', description: '法文名称', format: DbcFieldFormat.string),
    FieldDefinition(index: 15, name: 'Name_deDE', description: '德文名称', format: DbcFieldFormat.string),
    FieldDefinition(index: 16, name: 'Name_enCN', description: '简体中文名称', format: DbcFieldFormat.string),
    FieldDefinition(index: 17, name: 'Name_zhCN', description: '繁体中文名称', format: DbcFieldFormat.string),
    FieldDefinition(index: 18, name: 'Name_zhTW', description: '台湾繁体中文名称', format: DbcFieldFormat.string),
    FieldDefinition(index: 19, name: 'Name_esES', description: '西班牙文名称', format: DbcFieldFormat.string),
    FieldDefinition(index: 20, name: 'Name_esMX', description: '墨西哥西班牙文名称', format: DbcFieldFormat.string),
    FieldDefinition(index: 21, name: 'Name_ruRU', description: '俄文名称', format: DbcFieldFormat.string),
    FieldDefinition(index: 22, name: 'Name_ptBR', description: '葡萄牙文名称', format: DbcFieldFormat.string),
    FieldDefinition(index: 23, name: 'Name_itIT', description: '意大利文名称', format: DbcFieldFormat.string),
    FieldDefinition(index: 24, name: 'Name_ptPT', description: '葡萄牙葡萄牙文名称', format: DbcFieldFormat.string),
    FieldDefinition(index: 25, name: 'Name_unk', description: '未知语言名称', format: DbcFieldFormat.string),
    FieldDefinition(index: 26, name: 'Name_unk2', description: '未知语言名称 2', format: DbcFieldFormat.string),
    FieldDefinition(index: 27, name: 'Team', description: '团队 ID', format: DbcFieldFormat.intType),
    FieldDefinition(index: 28, name: 'LiquidTypeOverride0', description: '液体类型覆盖 0', format: DbcFieldFormat.intType),
    FieldDefinition(index: 29, name: 'LiquidTypeOverride1', description: '液体类型覆盖 1', format: DbcFieldFormat.intType),
    FieldDefinition(index: 30, name: 'LiquidTypeOverride2', description: '液体类型覆盖 2', format: DbcFieldFormat.intType),
    FieldDefinition(index: 31, name: 'LiquidTypeOverride3', description: '液体类型覆盖 3', format: DbcFieldFormat.intType),
  ],
);
