import 'package:warcrafty/src/schema/field.dart';
import 'package:warcrafty/src/schema/schema.dart';

/// StableSlotPrices 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
const stableSlotPrices = DbcSchema(
  name: 'StableSlotPrices',
  format: 'ni',
  fields: [
    Field(index: 0, name: 'ID', description: 'ID', type: FieldType.id),
    Field(index: 1, name: 'Cost', description: 'Cost', type: FieldType.int32),
  ],
);
