import 'package:warcrafty/src/definition/base/field_definition.dart';
import 'package:warcrafty/src/definition/base/structure_definition.dart';
import 'package:warcrafty/src/core/field_format.dart';

/// BankBagSlotPrices 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
const bankBagSlotPrices = DbcStructureDefinition(
  name: 'BankBagSlotPrices',
  format: 'ni',
  fields: [
    FieldDefinition(index: 0, name: 'ID', description: 'ID', format: DbcFieldFormat.indexField),
    FieldDefinition(index: 1, name: 'Cost', description: 'Cost', format: DbcFieldFormat.intType),
  ],
);
