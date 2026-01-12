/// StableSlotPrices.dbc - 兽栏槽位价格格式
library;

import '../base/field_definition.dart';
import '../base/structure_definition.dart';
import '../../core/field_format.dart';

/// StableSlotPrices 格式字符串
const String stableSlotPricesFormat = 'ni';

/// StableSlotPrices 结构定义
const DbcStructureDefinition stableSlotPrices = DbcStructureDefinition(
  name: 'StableSlotPrices',
  format: stableSlotPricesFormat,
  fields: [
    FieldDefinition(index: 0, name: 'Slot', description: '槽位', format: DbcFieldFormat.intType),
    FieldDefinition(index: 1, name: 'Price', description: '价格', format: DbcFieldFormat.intType),
  ],
);
