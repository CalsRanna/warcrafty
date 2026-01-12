import 'package:warcrafty/src/definition/base/field_definition.dart';
import 'package:warcrafty/src/definition/base/structure_definition.dart';
import 'package:warcrafty/src/core/field_format.dart';

/// GtBarberShopCostBase 格式字符串

/// GtBarberShopCostBase 结构定义
///
/// 格式字符串参考 AzerothCore: 单个浮点数
const gtBarberShopCostBase = DbcStructureDefinition(
  name: 'GtBarberShopCostBase',
  format: 'f',
  fields: [
    FieldDefinition(index: 0, name: 'Cost', description: '花费', format: DbcFieldFormat.float),
  ],
);
