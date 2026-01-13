import 'package:warcrafty/src/internal/field.dart';
import 'package:warcrafty/src/internal/schema.dart';
import 'package:warcrafty/src/internal/locale_field.dart';

/// AuctionHouse 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
final auctionHouse = DbcSchema(
  name: 'AuctionHouse',
  format: 'niiisssssssssssssssss',
  fields: [
    const Field(index: 0, name: 'ID', description: 'ID', type: FieldType.id),
    const Field(index: 1, name: 'FactionID', description: 'FactionID', type: FieldType.int32),
    const Field(index: 2, name: 'DepositRate', description: 'DepositRate', type: FieldType.int32),
    const Field(index: 3, name: 'ConsignmentRate', description: 'ConsignmentRate', type: FieldType.int32),
    ...createLocaleFieldsWithFlag(4, 'Name_lang', 'Name_lang'),
  ],
);
