import 'package:warcrafty/src/definition/base/field_definition.dart';
import 'package:warcrafty/src/definition/base/structure_definition.dart';
import 'package:warcrafty/src/core/field_format.dart';

/// GlyphProperties 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
const glyphProperties = DbcStructureDefinition(
  name: 'GlyphProperties',
  format: 'niii',
  fields: [
    FieldDefinition(index: 0, name: 'ID', description: 'ID', format: DbcFieldFormat.indexField),
    FieldDefinition(index: 1, name: 'SpellID', description: 'SpellID', format: DbcFieldFormat.intType),
    FieldDefinition(index: 2, name: 'GlyphSlotFlags', description: 'GlyphSlotFlags', format: DbcFieldFormat.intType),
    FieldDefinition(index: 3, name: 'SpellIconID', description: 'SpellIconID', format: DbcFieldFormat.intType),
  ],
);
