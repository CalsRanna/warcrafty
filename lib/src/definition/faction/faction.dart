import 'package:warcrafty/src/definition/base/field_definition.dart';
import 'package:warcrafty/src/definition/base/structure_definition.dart';
import 'package:warcrafty/src/core/field_format.dart';

/// Faction 格式字符串

/// Faction 结构定义
const faction = DbcStructureDefinition(
  name: 'Faction',
  format: 'niiiiiiiiiiiiiiiiiiffixssssssssssssssssxxxxxxxxxxxxxxxxxx',
  fields: [
    FieldDefinition(index: 0, name: 'ID', description: '派系 ID', format: DbcFieldFormat.intType),
    FieldDefinition(index: 1, name: 'ReputationListID', description: '声望列表 ID', format: DbcFieldFormat.intType),
    FieldDefinition(index: 2, name: 'BaseRepRaceMask0', description: '基础声望种族掩码 0', format: DbcFieldFormat.intType),
    FieldDefinition(index: 3, name: 'BaseRepRaceMask1', description: '基础声望种族掩码 1', format: DbcFieldFormat.intType),
    FieldDefinition(index: 4, name: 'BaseRepRaceMask2', description: '基础声望种族掩码 2', format: DbcFieldFormat.intType),
    FieldDefinition(index: 5, name: 'BaseRepRaceMask3', description: '基础声望种族掩码 3', format: DbcFieldFormat.intType),
    FieldDefinition(index: 6, name: 'BaseRepClassMask0', description: '基础声望职业掩码 0', format: DbcFieldFormat.intType),
    FieldDefinition(index: 7, name: 'BaseRepClassMask1', description: '基础声望职业掩码 1', format: DbcFieldFormat.intType),
    FieldDefinition(index: 8, name: 'BaseRepClassMask2', description: '基础声望职业掩码 2', format: DbcFieldFormat.intType),
    FieldDefinition(index: 9, name: 'BaseRepClassMask3', description: '基础声望职业掩码 3', format: DbcFieldFormat.intType),
    FieldDefinition(index: 10, name: 'BaseRepValue0', description: '基础声望值 0', format: DbcFieldFormat.intType),
    FieldDefinition(index: 11, name: 'BaseRepValue1', description: '基础声望值 1', format: DbcFieldFormat.intType),
    FieldDefinition(index: 12, name: 'BaseRepValue2', description: '基础声望值 2', format: DbcFieldFormat.intType),
    FieldDefinition(index: 13, name: 'BaseRepValue3', description: '基础声望值 3', format: DbcFieldFormat.intType),
    FieldDefinition(index: 14, name: 'ReputationFlags0', description: '声望标志 0', format: DbcFieldFormat.intType),
    FieldDefinition(index: 15, name: 'ReputationFlags1', description: '声望标志 1', format: DbcFieldFormat.intType),
    FieldDefinition(index: 16, name: 'ReputationFlags2', description: '声望标志 2', format: DbcFieldFormat.intType),
    FieldDefinition(index: 17, name: 'ReputationFlags3', description: '声望标志 3', format: DbcFieldFormat.intType),
    FieldDefinition(index: 18, name: 'Team', description: '团队', format: DbcFieldFormat.intType),
    FieldDefinition(index: 19, name: 'SpilloverRateIn', description: '溢出率输入', format: DbcFieldFormat.float),
    FieldDefinition(index: 20, name: 'SpilloverRateOut', description: '溢出率输出', format: DbcFieldFormat.float),
    FieldDefinition(index: 21, name: 'SpilloverMaxRankIn', description: '溢出最大等级输入', format: DbcFieldFormat.intType),
    FieldDefinition(index: 22, name: 'Unused22', description: '未使用', format: DbcFieldFormat.na),
    FieldDefinition(index: 23, name: 'Name_enUS', description: '英文名称', format: DbcFieldFormat.string),
    FieldDefinition(index: 24, name: 'Name_enGB', description: '英式英文名称', format: DbcFieldFormat.string),
    FieldDefinition(index: 25, name: 'Name_koKR', description: '韩文名称', format: DbcFieldFormat.string),
    FieldDefinition(index: 26, name: 'Name_frFR', description: '法文名称', format: DbcFieldFormat.string),
    FieldDefinition(index: 27, name: 'Name_deDE', description: '德文名称', format: DbcFieldFormat.string),
    FieldDefinition(index: 28, name: 'Name_enCN', description: '简体中文名称', format: DbcFieldFormat.string),
    FieldDefinition(index: 29, name: 'Name_zhCN', description: '繁体中文名称', format: DbcFieldFormat.string),
    FieldDefinition(index: 30, name: 'Name_zhTW', description: '台湾繁体中文名称', format: DbcFieldFormat.string),
    FieldDefinition(index: 31, name: 'Name_esES', description: '西班牙文名称', format: DbcFieldFormat.string),
    FieldDefinition(index: 32, name: 'Name_esMX', description: '墨西哥西班牙文名称', format: DbcFieldFormat.string),
    FieldDefinition(index: 33, name: 'Name_ruRU', description: '俄文名称', format: DbcFieldFormat.string),
    FieldDefinition(index: 34, name: 'Name_ptBR', description: '葡萄牙文名称', format: DbcFieldFormat.string),
    FieldDefinition(index: 35, name: 'Name_itIT', description: '意大利文名称', format: DbcFieldFormat.string),
    FieldDefinition(index: 36, name: 'Name_ptPT', description: '葡萄牙葡萄牙文名称', format: DbcFieldFormat.string),
    FieldDefinition(index: 37, name: 'Name_unk', description: '未知语言名称', format: DbcFieldFormat.string),
    FieldDefinition(index: 38, name: 'Name_unk2', description: '未知语言名称 2', format: DbcFieldFormat.string),
  ],
);
