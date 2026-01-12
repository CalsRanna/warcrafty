import 'package:warcrafty/src/core/field_definition.dart';
import 'package:warcrafty/src/core/structure_definition.dart';
import 'package:warcrafty/src/core/field_format.dart';
import 'package:warcrafty/src/core/locale_fields.dart';

/// ItemPurchaseGroup 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
final itemPurchaseGroup = DbcStructureDefinition(
  name: 'ItemPurchaseGroup',
  format: 'niiiiiiiisssssssssssssssss',
  fields: [
    const FieldDefinition(index: 0, name: 'ID', description: 'ID', format: DbcFieldFormat.indexField),
    const FieldDefinition(index: 1, name: 'ItemID0', description: 'ItemID 0', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 2, name: 'ItemID1', description: 'ItemID 1', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 3, name: 'ItemID2', description: 'ItemID 2', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 4, name: 'ItemID3', description: 'ItemID 3', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 5, name: 'ItemID4', description: 'ItemID 4', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 6, name: 'ItemID5', description: 'ItemID 5', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 7, name: 'ItemID6', description: 'ItemID 6', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 8, name: 'ItemID7', description: 'ItemID 7', format: DbcFieldFormat.intType),
    ...createLocaleFieldsWithFlag(9, 'Name_lang', 'Name_lang'),
  ],
);
