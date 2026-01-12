/// GtBarberShopCostBase.dbc - 理发店基础花费格式
library;

import '../base/field_definition.dart';
import '../base/structure_definition.dart';
import '../../core/field_format.dart';

/// GtBarberShopCostBase 格式字符串
const String gtBarberShopCostBaseFormat = 'df';

/// GtBarberShopCostBase 结构定义
const DbcStructureDefinition gtBarberShopCostBase = DbcStructureDefinition(
  name: 'GtBarberShopCostBase',
  format: gtBarberShopCostBaseFormat,
  fields: [
    FieldDefinition(index: 0, name: 'SortValue', description: '排序值', format: DbcFieldFormat.sort),
    FieldDefinition(index: 1, name: 'Cost', description: '花费', format: DbcFieldFormat.float),
  ],
);
