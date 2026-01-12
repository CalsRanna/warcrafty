import 'package:warcrafty/src/definition/base/field_definition.dart';
import 'package:warcrafty/src/definition/base/structure_definition.dart';
import 'package:warcrafty/src/core/field_format.dart';

/// BankBagSlotPrices 格式字符串

/// BankBagSlotPrices 结构定义
const bankBagSlotPrices = DbcStructureDefinition(
  name: 'BankBagSlotPrices',
  format: 'ni',
  fields: [
    FieldDefinition(index: 0, name: 'ID', description: '格子 ID', format: DbcFieldFormat.intType),
    FieldDefinition(index: 1, name: 'Price', description: '价格', format: DbcFieldFormat.intType),
  ],
);
