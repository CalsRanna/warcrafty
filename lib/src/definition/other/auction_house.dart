/// AuctionHouse.dbc - 拍卖行格式
library;

import '../base/field_definition.dart';
import '../base/structure_definition.dart';
import '../../core/field_format.dart';

/// AuctionHouse 格式字符串
const String auctionHouseFormat = 'niiixxxxxxxxxxxxxxxxx';

/// AuctionHouse 结构定义
const DbcStructureDefinition auctionHouse = DbcStructureDefinition(
  name: 'AuctionHouse',
  format: auctionHouseFormat,
  fields: [
    FieldDefinition(index: 0, name: 'HouseID', description: '拍卖行 ID', format: DbcFieldFormat.intType),
    FieldDefinition(index: 1, name: 'Faction', description: '派系 ID', format: DbcFieldFormat.intType),
    FieldDefinition(index: 2, name: 'DepositPercent', description: '押金百分比', format: DbcFieldFormat.intType),
    FieldDefinition(index: 3, name: 'CutPercent', description: '费用百分比', format: DbcFieldFormat.intType),
  ],
);
