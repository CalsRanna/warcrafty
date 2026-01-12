import 'package:warcrafty/src/definition/base/field_definition.dart';
import 'package:warcrafty/src/definition/base/structure_definition.dart';
import 'package:warcrafty/src/core/field_format.dart';

/// ItemExtendedCost 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
const itemExtendedCost = DbcStructureDefinition(
  name: 'ItemExtendedCost',
  format: 'niiiiiiiiiiiiiii',
  fields: [
    FieldDefinition(index: 0, name: 'ID', description: 'ID', format: DbcFieldFormat.indexField),
    FieldDefinition(index: 1, name: 'HonorPoints', description: 'HonorPoints', format: DbcFieldFormat.intType),
    FieldDefinition(index: 2, name: 'ArenaPoints', description: 'ArenaPoints', format: DbcFieldFormat.intType),
    FieldDefinition(index: 3, name: 'ArenaBracket', description: 'ArenaBracket', format: DbcFieldFormat.intType),
    FieldDefinition(index: 4, name: 'ItemID0', description: 'ItemID 0', format: DbcFieldFormat.intType),
    FieldDefinition(index: 5, name: 'ItemID1', description: 'ItemID 1', format: DbcFieldFormat.intType),
    FieldDefinition(index: 6, name: 'ItemID2', description: 'ItemID 2', format: DbcFieldFormat.intType),
    FieldDefinition(index: 7, name: 'ItemID3', description: 'ItemID 3', format: DbcFieldFormat.intType),
    FieldDefinition(index: 8, name: 'ItemID4', description: 'ItemID 4', format: DbcFieldFormat.intType),
    FieldDefinition(index: 9, name: 'ItemCount0', description: 'ItemCount 0', format: DbcFieldFormat.intType),
    FieldDefinition(index: 10, name: 'ItemCount1', description: 'ItemCount 1', format: DbcFieldFormat.intType),
    FieldDefinition(index: 11, name: 'ItemCount2', description: 'ItemCount 2', format: DbcFieldFormat.intType),
    FieldDefinition(index: 12, name: 'ItemCount3', description: 'ItemCount 3', format: DbcFieldFormat.intType),
    FieldDefinition(index: 13, name: 'ItemCount4', description: 'ItemCount 4', format: DbcFieldFormat.intType),
    FieldDefinition(index: 14, name: 'RequiredArenaRating', description: 'RequiredArenaRating', format: DbcFieldFormat.intType),
    FieldDefinition(index: 15, name: 'ItemPurchaseGroup', description: 'ItemPurchaseGroup', format: DbcFieldFormat.intType),
  ],
);
