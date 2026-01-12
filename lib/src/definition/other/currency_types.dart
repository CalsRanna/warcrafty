import 'package:warcrafty/src/definition/base/field_definition.dart';
import 'package:warcrafty/src/definition/base/structure_definition.dart';
import 'package:warcrafty/src/core/field_format.dart';

/// CurrencyTypes 格式字符串

/// CurrencyTypes 结构定义
const currencyTypes = DbcStructureDefinition(
  name: 'CurrencyTypes',
  format: 'xnxi',
  fields: [
    FieldDefinition(index: 0, name: 'ID', description: '未知', format: DbcFieldFormat.na),
    FieldDefinition(index: 1, name: 'ItemID', description: '物品 ID', format: DbcFieldFormat.intType),
    FieldDefinition(index: 2, name: 'Category', description: '类别', format: DbcFieldFormat.intType),
    FieldDefinition(index: 3, name: 'Flags', description: '标志', format: DbcFieldFormat.intType),
  ],
);
