import 'package:warcrafty/src/schema/field.dart';
import 'package:warcrafty/src/schema/schema.dart';

/// CurrencyTypes 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
const currencyTypes = DbcSchema(
  name: 'CurrencyTypes',
  format: 'niii',
  fields: [
    Field(index: 0, name: 'ID', description: 'ID', type: FieldType.id),
    Field(index: 1, name: 'ItemID', description: 'ItemID', type: FieldType.int32),
    Field(index: 2, name: 'CategoryID', description: 'CategoryID', type: FieldType.int32),
    Field(index: 3, name: 'BitIndex', description: 'BitIndex', type: FieldType.int32),
  ],
);
