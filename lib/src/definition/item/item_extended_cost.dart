/// ItemExtendedCost.dbc - 物品扩展花费格式
library;

import '../base/field_definition.dart';
import '../base/structure_definition.dart';
import '../../core/field_format.dart';

/// ItemExtendedCost 格式字符串
const String itemExtendedCostFormat = 'niiiiiiiiiiiiiix';

/// ItemExtendedCost 结构定义
const DbcStructureDefinition itemExtendedCost = DbcStructureDefinition(
  name: 'ItemExtendedCost',
  format: itemExtendedCostFormat,
  fields: [
    FieldDefinition(index: 0, name: 'ID', description: '扩展花费 ID', format: DbcFieldFormat.intType),
    FieldDefinition(index: 1, name: 'ReqHonorPoints', description: '需求荣誉点数', format: DbcFieldFormat.intType),
    FieldDefinition(index: 2, name: 'ReqArenaPoints', description: '需求竞技场点数', format: DbcFieldFormat.intType),
    FieldDefinition(index: 3, name: 'ReqArenaSlot', description: '需求竞技场槽位', format: DbcFieldFormat.intType),
    FieldDefinition(index: 4, name: 'ReqItem0', description: '需求物品 0', format: DbcFieldFormat.intType),
    FieldDefinition(index: 5, name: 'ReqItem1', description: '需求物品 1', format: DbcFieldFormat.intType),
    FieldDefinition(index: 6, name: 'ReqItem2', description: '需求物品 2', format: DbcFieldFormat.intType),
    FieldDefinition(index: 7, name: 'ReqItem3', description: '需求物品 3', format: DbcFieldFormat.intType),
    FieldDefinition(index: 8, name: 'ReqItem4', description: '需求物品 4', format: DbcFieldFormat.intType),
    FieldDefinition(index: 9, name: 'ReqItemCount0', description: '需求物品数量 0', format: DbcFieldFormat.intType),
    FieldDefinition(index: 10, name: 'ReqItemCount1', description: '需求物品数量 1', format: DbcFieldFormat.intType),
    FieldDefinition(index: 11, name: 'ReqItemCount2', description: '需求物品数量 2', format: DbcFieldFormat.intType),
    FieldDefinition(index: 12, name: 'ReqItemCount3', description: '需求物品数量 3', format: DbcFieldFormat.intType),
    FieldDefinition(index: 13, name: 'ReqItemCount4', description: '需求物品数量 4', format: DbcFieldFormat.intType),
    FieldDefinition(index: 14, name: 'ReqPersonalArenaRating', description: '需求个人竞技场评分', format: DbcFieldFormat.intType),
    FieldDefinition(index: 15, name: 'Unused15', description: '未使用', format: DbcFieldFormat.na),
  ],
);
