import 'package:warcrafty/src/schema/field.dart';
import 'package:warcrafty/src/schema/schema.dart';

/// GemProperties 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
const gemProperties = DbcSchema(
  name: 'GemProperties',
  format: 'niiii',
  fields: [
    Field(index: 0, name: 'ID', description: 'ID', type: FieldType.id),
    Field(index: 1, name: 'Enchant_ID', description: 'Enchant_ID', type: FieldType.int32),
    Field(index: 2, name: 'Maxcount_inv', description: 'Maxcount_inv', type: FieldType.int32),
    Field(index: 3, name: 'Maxcount_item', description: 'Maxcount_item', type: FieldType.int32),
    Field(index: 4, name: 'Type', description: 'Type', type: FieldType.int32),
  ],
);
