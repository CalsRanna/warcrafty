import 'package:warcrafty/src/core/field_definition.dart';
import 'package:warcrafty/src/core/structure_definition.dart';
import 'package:warcrafty/src/core/field_format.dart';

/// GlyphSlot 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
const glyphSlot = DbcStructureDefinition(
  name: 'GlyphSlot',
  format: 'nii',
  fields: [
    FieldDefinition(index: 0, name: 'ID', description: 'ID', format: DbcFieldFormat.indexField),
    FieldDefinition(index: 1, name: 'Type', description: 'Type', format: DbcFieldFormat.intType),
    FieldDefinition(index: 2, name: 'Tooltip', description: 'Tooltip', format: DbcFieldFormat.intType),
  ],
);
