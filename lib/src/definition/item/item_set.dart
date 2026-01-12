/// ItemSet.dbc - 物品套装格式
library;

import '../base/field_definition.dart';
import '../base/structure_definition.dart';
import '../../core/field_format.dart';

/// ItemSet 格式字符串
const String itemSetFormat = 'dssssssssssssssssxiiiiiiiiiixxxxxxxiiiiiiiiiiiiiiiiii';

/// ItemSet 结构定义
const DbcStructureDefinition itemSet = DbcStructureDefinition(
  name: 'ItemSet',
  format: itemSetFormat,
  fields: [
    FieldDefinition(index: 0, name: 'SortValue', description: '排序值', format: DbcFieldFormat.sort),
    FieldDefinition(index: 1, name: 'Name_enUS', description: '英文名称', format: DbcFieldFormat.string),
    FieldDefinition(index: 2, name: 'Name_enGB', description: '英式英文名称', format: DbcFieldFormat.string),
    FieldDefinition(index: 3, name: 'Name_koKR', description: '韩文名称', format: DbcFieldFormat.string),
    FieldDefinition(index: 4, name: 'Name_frFR', description: '法文名称', format: DbcFieldFormat.string),
    FieldDefinition(index: 5, name: 'Name_deDE', description: '德文名称', format: DbcFieldFormat.string),
    FieldDefinition(index: 6, name: 'Name_enCN', description: '简体中文名称', format: DbcFieldFormat.string),
    FieldDefinition(index: 7, name: 'Name_zhCN', description: '繁体中文名称', format: DbcFieldFormat.string),
    FieldDefinition(index: 8, name: 'Name_zhTW', description: '台湾繁体中文名称', format: DbcFieldFormat.string),
    FieldDefinition(index: 9, name: 'Name_esES', description: '西班牙文名称', format: DbcFieldFormat.string),
    FieldDefinition(index: 10, name: 'Name_esMX', description: '墨西哥西班牙文名称', format: DbcFieldFormat.string),
    FieldDefinition(index: 11, name: 'Name_ruRU', description: '俄文名称', format: DbcFieldFormat.string),
    FieldDefinition(index: 12, name: 'Name_ptBR', description: '葡萄牙文名称', format: DbcFieldFormat.string),
    FieldDefinition(index: 13, name: 'Name_itIT', description: '意大利文名称', format: DbcFieldFormat.string),
    FieldDefinition(index: 14, name: 'Name_ptPT', description: '葡萄牙葡萄牙文名称', format: DbcFieldFormat.string),
    FieldDefinition(index: 15, name: 'Name_unk', description: '未知语言名称', format: DbcFieldFormat.string),
    FieldDefinition(index: 16, name: 'Name_unk2', description: '未知语言名称 2', format: DbcFieldFormat.string),
    FieldDefinition(index: 17, name: 'Unused17', description: '未使用', format: DbcFieldFormat.na),
    FieldDefinition(index: 18, name: 'ItemID0', description: '物品 ID 0', format: DbcFieldFormat.intType),
    FieldDefinition(index: 19, name: 'ItemID1', description: '物品 ID 1', format: DbcFieldFormat.intType),
    FieldDefinition(index: 20, name: 'ItemID2', description: '物品 ID 2', format: DbcFieldFormat.intType),
    FieldDefinition(index: 21, name: 'ItemID3', description: '物品 ID 3', format: DbcFieldFormat.intType),
    FieldDefinition(index: 22, name: 'ItemID4', description: '物品 ID 4', format: DbcFieldFormat.intType),
    FieldDefinition(index: 23, name: 'ItemID5', description: '物品 ID 5', format: DbcFieldFormat.intType),
    FieldDefinition(index: 24, name: 'ItemID6', description: '物品 ID 6', format: DbcFieldFormat.intType),
    FieldDefinition(index: 25, name: 'ItemID7', description: '物品 ID 7', format: DbcFieldFormat.intType),
    FieldDefinition(index: 26, name: 'ItemID8', description: '物品 ID 8', format: DbcFieldFormat.intType),
    FieldDefinition(index: 27, name: 'ItemID9', description: '物品 ID 9', format: DbcFieldFormat.intType),
    FieldDefinition(index: 28, name: 'Unused28', description: '未使用', format: DbcFieldFormat.na),
    FieldDefinition(index: 29, name: 'SpellID0', description: '法术 ID 0', format: DbcFieldFormat.intType),
    FieldDefinition(index: 30, name: 'SpellID1', description: '法术 ID 1', format: DbcFieldFormat.intType),
    FieldDefinition(index: 31, name: 'SpellID2', description: '法术 ID 2', format: DbcFieldFormat.intType),
    FieldDefinition(index: 32, name: 'SpellID3', description: '法术 ID 3', format: DbcFieldFormat.intType),
    FieldDefinition(index: 33, name: 'SpellID4', description: '法术 ID 4', format: DbcFieldFormat.intType),
    FieldDefinition(index: 34, name: 'SpellID5', description: '法术 ID 5', format: DbcFieldFormat.intType),
    FieldDefinition(index: 35, name: 'SpellID6', description: '法术 ID 6', format: DbcFieldFormat.intType),
    FieldDefinition(index: 36, name: 'SpellID7', description: '法术 ID 7', format: DbcFieldFormat.intType),
    FieldDefinition(index: 37, name: 'Threshold0', description: '阈值 0', format: DbcFieldFormat.intType),
    FieldDefinition(index: 38, name: 'Threshold1', description: '阈值 1', format: DbcFieldFormat.intType),
    FieldDefinition(index: 39, name: 'Threshold2', description: '阈值 2', format: DbcFieldFormat.intType),
    FieldDefinition(index: 40, name: 'Threshold3', description: '阈值 3', format: DbcFieldFormat.intType),
    FieldDefinition(index: 41, name: 'Threshold4', description: '阈值 4', format: DbcFieldFormat.intType),
    FieldDefinition(index: 42, name: 'Threshold5', description: '阈值 5', format: DbcFieldFormat.intType),
    FieldDefinition(index: 43, name: 'Threshold6', description: '阈值 6', format: DbcFieldFormat.intType),
    FieldDefinition(index: 44, name: 'Threshold7', description: '阈值 7', format: DbcFieldFormat.intType),
    FieldDefinition(index: 45, name: 'RequiredSkillID', description: '需求技能 ID', format: DbcFieldFormat.intType),
    FieldDefinition(index: 46, name: 'RequiredSkillValue', description: '需求技能等级', format: DbcFieldFormat.intType),
  ],
);
