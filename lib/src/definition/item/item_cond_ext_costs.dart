import 'package:warcrafty/src/schema/field.dart';
import 'package:warcrafty/src/schema/schema.dart';

/// ItemCondExtCosts 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
const itemCondExtCosts = DbcSchema(
  name: 'ItemCondExtCosts',
  format: 'niii',
  fields: [
    Field(index: 0, name: 'ID', description: 'ID', type: FieldType.id),
    Field(index: 1, name: 'CondExtendedCost', description: 'CondExtendedCost', type: FieldType.int32),
    Field(index: 2, name: 'ItemExtendedCostEntry', description: 'ItemExtendedCostEntry', type: FieldType.int32),
    Field(index: 3, name: 'ArenaSeason', description: 'ArenaSeason', type: FieldType.int32),
  ],
);
