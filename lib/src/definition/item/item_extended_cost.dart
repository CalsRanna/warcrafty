import 'package:warcrafty/src/schema/field.dart';
import 'package:warcrafty/src/schema/schema.dart';

/// ItemExtendedCost 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
const itemExtendedCost = DbcSchema(
  name: 'ItemExtendedCost',
  format: 'niiiiiiiiiiiiiii',
  fields: [
    Field(index: 0, name: 'ID', description: 'ID', type: FieldType.id),
    Field(index: 1, name: 'HonorPoints', description: 'HonorPoints', type: FieldType.int32),
    Field(index: 2, name: 'ArenaPoints', description: 'ArenaPoints', type: FieldType.int32),
    Field(index: 3, name: 'ArenaBracket', description: 'ArenaBracket', type: FieldType.int32),
    Field(index: 4, name: 'ItemID0', description: 'ItemID 0', type: FieldType.int32),
    Field(index: 5, name: 'ItemID1', description: 'ItemID 1', type: FieldType.int32),
    Field(index: 6, name: 'ItemID2', description: 'ItemID 2', type: FieldType.int32),
    Field(index: 7, name: 'ItemID3', description: 'ItemID 3', type: FieldType.int32),
    Field(index: 8, name: 'ItemID4', description: 'ItemID 4', type: FieldType.int32),
    Field(index: 9, name: 'ItemCount0', description: 'ItemCount 0', type: FieldType.int32),
    Field(index: 10, name: 'ItemCount1', description: 'ItemCount 1', type: FieldType.int32),
    Field(index: 11, name: 'ItemCount2', description: 'ItemCount 2', type: FieldType.int32),
    Field(index: 12, name: 'ItemCount3', description: 'ItemCount 3', type: FieldType.int32),
    Field(index: 13, name: 'ItemCount4', description: 'ItemCount 4', type: FieldType.int32),
    Field(index: 14, name: 'RequiredArenaRating', description: 'RequiredArenaRating', type: FieldType.int32),
    Field(index: 15, name: 'ItemPurchaseGroup', description: 'ItemPurchaseGroup', type: FieldType.int32),
  ],
);
