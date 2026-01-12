import 'package:warcrafty/src/definition/base/field_definition.dart';
import 'package:warcrafty/src/definition/base/structure_definition.dart';
import 'package:warcrafty/src/core/field_format.dart';

/// GtBarberShopCostBase 格式字符串

/// GtBarberShopCostBase 结构定义
const gtBarberShopCostBase = DbcStructureDefinition(
  name: 'GtBarberShopCostBase',
  format: 'df',
  fields: [
    FieldDefinition(index: 0, name: 'SortValue', description: '排序值', format: DbcFieldFormat.sort),
    FieldDefinition(index: 1, name: 'Cost', description: '花费', format: DbcFieldFormat.float),
  ],
);
