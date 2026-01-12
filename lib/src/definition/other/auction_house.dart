import 'package:warcrafty/src/definition/base/field_definition.dart';
import 'package:warcrafty/src/definition/base/structure_definition.dart';
import 'package:warcrafty/src/core/field_format.dart';

/// AuctionHouse 格式字符串

/// AuctionHouse 结构定义
const auctionHouse = DbcStructureDefinition(
  name: 'AuctionHouse',
  format: 'niiixxxxxxxxxxxxxxxxx',
  fields: [
    FieldDefinition(index: 0, name: 'HouseID', description: '拍卖行 ID', format: DbcFieldFormat.intType),
    FieldDefinition(index: 1, name: 'Faction', description: '派系 ID', format: DbcFieldFormat.intType),
    FieldDefinition(index: 2, name: 'DepositPercent', description: '押金百分比', format: DbcFieldFormat.intType),
    FieldDefinition(index: 3, name: 'CutPercent', description: '费用百分比', format: DbcFieldFormat.intType),
  ],
);
