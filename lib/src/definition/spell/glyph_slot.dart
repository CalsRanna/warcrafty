import 'package:warcrafty/src/internal/field.dart';
import 'package:warcrafty/src/internal/schema.dart';

/// GlyphSlot 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
const glyphSlot = DbcSchema(
  name: 'GlyphSlot',
  format: 'nii',
  fields: [
    Field(index: 0, name: 'ID', description: 'ID', type: FieldType.id),
    Field(index: 1, name: 'Type', description: 'Type', type: FieldType.int32),
    Field(index: 2, name: 'Tooltip', description: 'Tooltip', type: FieldType.int32),
  ],
);
