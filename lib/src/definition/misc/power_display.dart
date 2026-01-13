import 'package:warcrafty/src/internal/field.dart';
import 'package:warcrafty/src/internal/schema.dart';

/// PowerDisplay 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
const powerDisplay = DbcSchema(
  name: 'PowerDisplay',
  format: 'nisbbb',
  fields: [
    Field(index: 0, name: 'ID', description: 'ID', type: FieldType.id),
    Field(index: 1, name: 'ActualType', description: 'ActualType', type: FieldType.int32),
    Field(index: 2, name: 'GlobalStringBaseTag', description: 'GlobalStringBaseTag', type: FieldType.string),
    Field(index: 3, name: 'Red', description: 'Red', type: FieldType.uint8),
    Field(index: 4, name: 'Green', description: 'Green', type: FieldType.uint8),
    Field(index: 5, name: 'Blue', description: 'Blue', type: FieldType.uint8),
  ],
);
