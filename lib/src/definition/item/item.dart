import 'package:warcrafty/src/internal/field.dart';
import 'package:warcrafty/src/internal/schema.dart';

/// Item 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
const item = DbcSchema(
  name: 'Item',
  format: 'niiiiiii',
  fields: [
    Field(index: 0, name: 'ID', description: 'ID', type: FieldType.id),
    Field(index: 1, name: 'ClassID', description: 'ClassID', type: FieldType.int32),
    Field(index: 2, name: 'SubclassID', description: 'SubclassID', type: FieldType.int32),
    Field(index: 3, name: 'Sound_override_subclassID', description: 'Sound_override_subclassID', type: FieldType.int32),
    Field(index: 4, name: 'Material', description: 'Material', type: FieldType.int32),
    Field(index: 5, name: 'DisplayInfoID', description: 'DisplayInfoID', type: FieldType.int32),
    Field(index: 6, name: 'InventoryType', description: 'InventoryType', type: FieldType.int32),
    Field(index: 7, name: 'SheatheType', description: 'SheatheType', type: FieldType.int32),
  ],
);
