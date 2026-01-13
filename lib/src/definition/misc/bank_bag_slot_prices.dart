import 'package:warcrafty/src/internal/field.dart';
import 'package:warcrafty/src/internal/schema.dart';

/// BankBagSlotPrices 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
const bankBagSlotPrices = DbcSchema(
  name: 'BankBagSlotPrices',
  format: 'ni',
  fields: [
    Field(index: 0, name: 'ID', description: 'ID', type: FieldType.id),
    Field(index: 1, name: 'Cost', description: 'Cost', type: FieldType.int32),
  ],
);
