/// CurrencyTypes.dbc - 货币类型格式
library;

import '../base/field_definition.dart';
import '../base/structure_definition.dart';
import '../../core/field_format.dart';

/// CurrencyTypes 格式字符串
const String currencyTypesFormat = 'xnxi';

/// CurrencyTypes 结构定义
const DbcStructureDefinition currencyTypes = DbcStructureDefinition(
  name: 'CurrencyTypes',
  format: currencyTypesFormat,
  fields: [
    FieldDefinition(index: 0, name: 'ID', description: '未知', format: DbcFieldFormat.na),
    FieldDefinition(index: 1, name: 'ItemID', description: '物品 ID', format: DbcFieldFormat.intType),
    FieldDefinition(index: 2, name: 'Category', description: '类别', format: DbcFieldFormat.intType),
    FieldDefinition(index: 3, name: 'Flags', description: '标志', format: DbcFieldFormat.intType),
  ],
);
