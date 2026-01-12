import 'package:warcrafty/src/core/field_definition.dart';
import 'package:warcrafty/src/core/structure_definition.dart';
import 'package:warcrafty/src/core/field_format.dart';
import 'package:warcrafty/src/core/locale_fields.dart';

/// AuctionHouse 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
final auctionHouse = DbcStructureDefinition(
  name: 'AuctionHouse',
  format: 'niiisssssssssssssssss',
  fields: [
    const FieldDefinition(index: 0, name: 'ID', description: 'ID', format: DbcFieldFormat.indexField),
    const FieldDefinition(index: 1, name: 'FactionID', description: 'FactionID', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 2, name: 'DepositRate', description: 'DepositRate', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 3, name: 'ConsignmentRate', description: 'ConsignmentRate', format: DbcFieldFormat.intType),
    ...createLocaleFieldsWithFlag(4, 'Name_lang', 'Name_lang'),
  ],
);
