/// ChrRaces.dbc - 种族定义格式
///
/// 字段说明:
/// - ID: 种族 ID
/// - Flags: 种族标志 (CHRRACES_FLAGS_*)
/// - FactionID: 派系模板 ID
/// - ModelM: 男性模型 ID
/// - ModelF: 女性模型 ID
/// - TeamID: 团队 ID (7=Alliance, 1=Horde)
/// - CinematicSequence: 过场动画序列 ID
/// - Name: 种族名称 (16个本地化字符串)
/// - Expansion: 资料片 ID (0=Vanilla, 1=TBC, 2=WotLK)
library;

import '../base/field_definition.dart';
import '../base/structure_definition.dart';
import '../../core/field_format.dart';

/// ChrRaces 格式字符串 (与 AzerothCore DBCfmt.h 一致)
const String chrRacesFormat = 'niixiixixxxxixssssssssssssssssxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxi';

/// ChrRaces 结构定义
const DbcStructureDefinition chrRaces = DbcStructureDefinition(
  name: 'ChrRaces',
  format: chrRacesFormat,
  fields: [
    FieldDefinition(index: 0, name: 'ID', description: '种族 ID', format: DbcFieldFormat.intType),
    FieldDefinition(index: 1, name: 'Flags', description: '种族标志', format: DbcFieldFormat.intType),
    FieldDefinition(index: 2, name: 'FactionID', description: '派系模板 ID', format: DbcFieldFormat.intType),
    FieldDefinition(index: 3, name: 'Unused3', description: '未使用', format: DbcFieldFormat.na),
    FieldDefinition(index: 4, name: 'ModelM', description: '男性模型 ID', format: DbcFieldFormat.intType),
    FieldDefinition(index: 5, name: 'ModelF', description: '女性模型 ID', format: DbcFieldFormat.intType),
    FieldDefinition(index: 6, name: 'Unused6', description: '未使用', format: DbcFieldFormat.na),
    FieldDefinition(index: 7, name: 'TeamID', description: '团队 ID (7=Alliance, 1=Horde)', format: DbcFieldFormat.intType),
    FieldDefinition(index: 8, name: 'Unused8', description: '未使用', format: DbcFieldFormat.na),
    FieldDefinition(index: 9, name: 'Unused9', description: '未使用', format: DbcFieldFormat.na),
    FieldDefinition(index: 10, name: 'Unused10', description: '未使用', format: DbcFieldFormat.na),
    FieldDefinition(index: 11, name: 'Unused11', description: '未使用', format: DbcFieldFormat.na),
    FieldDefinition(index: 12, name: 'CinematicSequence', description: '过场动画序列 ID', format: DbcFieldFormat.intType),
    FieldDefinition(index: 13, name: 'Unused13', description: '未使用', format: DbcFieldFormat.na),
    FieldDefinition(index: 14, name: 'Name_enUS', description: '英文名称', format: DbcFieldFormat.string),
    FieldDefinition(index: 15, name: 'Name_enGB', description: '英式英文名称', format: DbcFieldFormat.string),
    FieldDefinition(index: 16, name: 'Name_koKR', description: '韩文名称', format: DbcFieldFormat.string),
    FieldDefinition(index: 17, name: 'Name_frFR', description: '法文名称', format: DbcFieldFormat.string),
    FieldDefinition(index: 18, name: 'Name_deDE', description: '德文名称', format: DbcFieldFormat.string),
    FieldDefinition(index: 19, name: 'Name_enCN', description: '简体中文名称', format: DbcFieldFormat.string),
    FieldDefinition(index: 20, name: 'Name_zhCN', description: '繁体中文名称', format: DbcFieldFormat.string),
    FieldDefinition(index: 21, name: 'Name_zhTW', description: '台湾繁体中文名称', format: DbcFieldFormat.string),
    FieldDefinition(index: 22, name: 'Name_esES', description: '西班牙文名称', format: DbcFieldFormat.string),
    FieldDefinition(index: 23, name: 'Name_esMX', description: '墨西哥西班牙文名称', format: DbcFieldFormat.string),
    FieldDefinition(index: 24, name: 'Name_ruRU', description: '俄文名称', format: DbcFieldFormat.string),
    FieldDefinition(index: 25, name: 'Name_ptBR', description: '葡萄牙文名称', format: DbcFieldFormat.string),
    FieldDefinition(index: 26, name: 'Name_itIT', description: '意大利文名称', format: DbcFieldFormat.string),
    FieldDefinition(index: 27, name: 'Name_ptPT', description: '葡萄牙葡萄牙文名称', format: DbcFieldFormat.string),
    FieldDefinition(index: 28, name: 'Name_unk', description: '未知语言名称', format: DbcFieldFormat.string),
    FieldDefinition(index: 29, name: 'Name_unk2', description: '未知语言名称 2', format: DbcFieldFormat.string),
    FieldDefinition(index: 30, name: 'Unused30', description: '未使用', format: DbcFieldFormat.na),
    FieldDefinition(index: 31, name: 'Unused31', description: '未使用', format: DbcFieldFormat.na),
    FieldDefinition(index: 32, name: 'Unused32', description: '未使用', format: DbcFieldFormat.na),
    FieldDefinition(index: 33, name: 'Expansion', description: '资料片 ID (0=Vanilla, 1=TBC, 2=WotLK)', format: DbcFieldFormat.intType),
  ],
);
