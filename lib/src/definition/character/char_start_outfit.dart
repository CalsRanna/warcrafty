import 'package:warcrafty/src/definition/base/field_definition.dart';
import 'package:warcrafty/src/definition/base/structure_definition.dart';
import 'package:warcrafty/src/core/field_format.dart';

/// CharStartOutfit 结构定义
const charStartOutfit = DbcStructureDefinition(
  name: 'CharStartOutfit',
  format: 'dbbbXiiiiiiiiiiiiiiiiiiiiiiiixxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx',
  fields: [
    FieldDefinition(index: 0, name: 'SortValue', description: '排序值', format: DbcFieldFormat.sort),
    FieldDefinition(index: 1, name: 'Race', description: '种族 ID', format: DbcFieldFormat.byte),
    FieldDefinition(index: 2, name: 'Class', description: '职业 ID', format: DbcFieldFormat.byte),
    FieldDefinition(index: 3, name: 'Gender', description: '性别 (0=男, 1=女)', format: DbcFieldFormat.byte),
    FieldDefinition(index: 4, name: 'Unused4', description: '未使用', format: DbcFieldFormat.naByte),
    FieldDefinition(index: 5, name: 'ItemID0', description: '物品 ID 0', format: DbcFieldFormat.intType),
    FieldDefinition(index: 6, name: 'ItemID1', description: '物品 ID 1', format: DbcFieldFormat.intType),
    FieldDefinition(index: 7, name: 'ItemID2', description: '物品 ID 2', format: DbcFieldFormat.intType),
    FieldDefinition(index: 8, name: 'ItemID3', description: '物品 ID 3', format: DbcFieldFormat.intType),
    FieldDefinition(index: 9, name: 'ItemID4', description: '物品 ID 4', format: DbcFieldFormat.intType),
    FieldDefinition(index: 10, name: 'ItemID5', description: '物品 ID 5', format: DbcFieldFormat.intType),
    FieldDefinition(index: 11, name: 'ItemID6', description: '物品 ID 6', format: DbcFieldFormat.intType),
    FieldDefinition(index: 12, name: 'ItemID7', description: '物品 ID 7', format: DbcFieldFormat.intType),
    FieldDefinition(index: 13, name: 'ItemID8', description: '物品 ID 8', format: DbcFieldFormat.intType),
    FieldDefinition(index: 14, name: 'ItemID9', description: '物品 ID 9', format: DbcFieldFormat.intType),
    FieldDefinition(index: 15, name: 'ItemID10', description: '物品 ID 10', format: DbcFieldFormat.intType),
    FieldDefinition(index: 16, name: 'ItemID11', description: '物品 ID 11', format: DbcFieldFormat.intType),
    FieldDefinition(index: 17, name: 'ItemID12', description: '物品 ID 12', format: DbcFieldFormat.intType),
    FieldDefinition(index: 18, name: 'ItemID13', description: '物品 ID 13', format: DbcFieldFormat.intType),
    FieldDefinition(index: 19, name: 'ItemID14', description: '物品 ID 14', format: DbcFieldFormat.intType),
    FieldDefinition(index: 20, name: 'ItemID15', description: '物品 ID 15', format: DbcFieldFormat.intType),
    FieldDefinition(index: 21, name: 'ItemID16', description: '物品 ID 16', format: DbcFieldFormat.intType),
    FieldDefinition(index: 22, name: 'ItemID17', description: '物品 ID 17', format: DbcFieldFormat.intType),
    FieldDefinition(index: 23, name: 'ItemID18', description: '物品 ID 18', format: DbcFieldFormat.intType),
    FieldDefinition(index: 24, name: 'ItemID19', description: '物品 ID 19', format: DbcFieldFormat.intType),
    FieldDefinition(index: 25, name: 'ItemID20', description: '物品 ID 20', format: DbcFieldFormat.intType),
    FieldDefinition(index: 26, name: 'ItemID21', description: '物品 ID 21', format: DbcFieldFormat.intType),
    FieldDefinition(index: 27, name: 'ItemID22', description: '物品 ID 22', format: DbcFieldFormat.intType),
    FieldDefinition(index: 28, name: 'ItemID23', description: '物品 ID 23', format: DbcFieldFormat.intType),
  ],
);
