import 'package:warcrafty/src/schema/field.dart';
import 'package:warcrafty/src/schema/schema.dart';
import 'package:warcrafty/src/tools/locale_fields.dart';

/// ItemPurchaseGroup 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
final itemPurchaseGroup = DbcSchema(
  name: 'ItemPurchaseGroup',
  format: 'niiiiiiiisssssssssssssssss',
  fields: [
    const Field(index: 0, name: 'ID', description: 'ID', type: FieldType.id),
    const Field(index: 1, name: 'ItemID0', description: 'ItemID 0', type: FieldType.int32),
    const Field(index: 2, name: 'ItemID1', description: 'ItemID 1', type: FieldType.int32),
    const Field(index: 3, name: 'ItemID2', description: 'ItemID 2', type: FieldType.int32),
    const Field(index: 4, name: 'ItemID3', description: 'ItemID 3', type: FieldType.int32),
    const Field(index: 5, name: 'ItemID4', description: 'ItemID 4', type: FieldType.int32),
    const Field(index: 6, name: 'ItemID5', description: 'ItemID 5', type: FieldType.int32),
    const Field(index: 7, name: 'ItemID6', description: 'ItemID 6', type: FieldType.int32),
    const Field(index: 8, name: 'ItemID7', description: 'ItemID 7', type: FieldType.int32),
    ...createLocaleFieldsWithFlag(9, 'Name_lang', 'Name_lang'),
  ],
);
