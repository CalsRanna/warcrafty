import 'package:warcrafty/src/core/field_format.dart';
import 'package:warcrafty/src/definition/base/field_definition.dart';
import 'package:warcrafty/src/definition/base/structure_definition.dart';
import 'package:warcrafty/src/definition/common/locale_fields.dart';

/// ItemSet 结构定义
///
/// 格式字符串参考 AzerothCore DBCfmt.h:
/// char constexpr ItemSetEntryfmt[] = "dssssssssssssssssxiiiiiiiiiixxxxxxxiiiiiiiiiiiiiiiiii";
final itemSet = DbcStructureDefinition(
  name: 'ItemSet',
  format: 'dssssssssssssssssxiiiiiiiiiixxxxxxxiiiiiiiiiiiiiiiiii',
  fields: [
    const FieldDefinition(index: 0, name: 'ID', description: '套装 ID (排序字段)', format: DbcFieldFormat.sort),
    // 名称字段 (1-16): 16 种语言
    ...createLocaleFields(1, 'Name', '套装名称'),
    const FieldDefinition(index: 17, name: 'Name_Flags', description: '名称标志 (未使用)', format: DbcFieldFormat.na),
    // 物品 ID (18-27): 10 个
    const FieldDefinition(index: 18, name: 'ItemID0', description: '物品 ID 0', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 19, name: 'ItemID1', description: '物品 ID 1', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 20, name: 'ItemID2', description: '物品 ID 2', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 21, name: 'ItemID3', description: '物品 ID 3', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 22, name: 'ItemID4', description: '物品 ID 4', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 23, name: 'ItemID5', description: '物品 ID 5', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 24, name: 'ItemID6', description: '物品 ID 6', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 25, name: 'ItemID7', description: '物品 ID 7', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 26, name: 'ItemID8', description: '物品 ID 8', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 27, name: 'ItemID9', description: '物品 ID 9', format: DbcFieldFormat.intType),
    // 未使用字段 (28-34): 7 个 x
    ...createUnusedFields(28, 7),
    // 法术 ID (35-42): 8 个
    const FieldDefinition(index: 35, name: 'SpellID0', description: '法术 ID 0', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 36, name: 'SpellID1', description: '法术 ID 1', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 37, name: 'SpellID2', description: '法术 ID 2', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 38, name: 'SpellID3', description: '法术 ID 3', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 39, name: 'SpellID4', description: '法术 ID 4', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 40, name: 'SpellID5', description: '法术 ID 5', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 41, name: 'SpellID6', description: '法术 ID 6', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 42, name: 'SpellID7', description: '法术 ID 7', format: DbcFieldFormat.intType),
    // 阈值 (43-50): 8 个
    const FieldDefinition(index: 43, name: 'Threshold0', description: '触发阈值 0', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 44, name: 'Threshold1', description: '触发阈值 1', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 45, name: 'Threshold2', description: '触发阈值 2', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 46, name: 'Threshold3', description: '触发阈值 3', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 47, name: 'Threshold4', description: '触发阈值 4', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 48, name: 'Threshold5', description: '触发阈值 5', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 49, name: 'Threshold6', description: '触发阈值 6', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 50, name: 'Threshold7', description: '触发阈值 7', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 51, name: 'RequiredSkillID', description: '需求技能 ID', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 52, name: 'RequiredSkillValue', description: '需求技能等级', format: DbcFieldFormat.intType),
  ],
);
