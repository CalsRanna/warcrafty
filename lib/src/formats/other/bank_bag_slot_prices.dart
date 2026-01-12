/// BankBagSlotPrices.dbc - 银行背包格子价格格式
library;

import '../base/field_definition.dart';
import '../base/structure_definition.dart';
import '../../core/field_format.dart';

/// BankBagSlotPrices 格式字符串
const String bankBagSlotPricesFormat = 'ni';

/// BankBagSlotPrices 结构定义
const DbcStructureDefinition bankBagSlotPrices = DbcStructureDefinition(
  name: 'BankBagSlotPrices',
  format: bankBagSlotPricesFormat,
  fields: [
    FieldDefinition(index: 0, name: 'ID', description: '格子 ID', format: DbcFieldFormat.intType),
    FieldDefinition(index: 1, name: 'Price', description: '价格', format: DbcFieldFormat.intType),
  ],
);
