import 'package:warcrafty/src/schema/field.dart';
import 'package:warcrafty/src/schema/schema.dart';

/// GlyphProperties 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
const glyphProperties = DbcSchema(
  name: 'GlyphProperties',
  format: 'niii',
  fields: [
    Field(index: 0, name: 'ID', description: 'ID', type: FieldType.id),
    Field(index: 1, name: 'SpellID', description: 'SpellID', type: FieldType.int32),
    Field(index: 2, name: 'GlyphSlotFlags', description: 'GlyphSlotFlags', type: FieldType.int32),
    Field(index: 3, name: 'SpellIconID', description: 'SpellIconID', type: FieldType.int32),
  ],
);
