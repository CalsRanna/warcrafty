import 'package:warcrafty/src/definition/base/field_definition.dart';
import 'package:warcrafty/src/definition/base/structure_definition.dart';
import 'package:warcrafty/src/core/field_format.dart';

/// GlyphProperties 格式字符串

/// GlyphProperties 结构定义
const glyphProperties = DbcStructureDefinition(
  name: 'GlyphProperties',
  format: 'niix',
  fields: [
    FieldDefinition(index: 0, name: 'ID', description: 'ID', format: DbcFieldFormat.intType),
    FieldDefinition(index: 1, name: 'SpellID', description: '法术 ID', format: DbcFieldFormat.intType),
    FieldDefinition(index: 2, name: 'GlyphExclusiveCategoryID', description: '雕文独占类别 ID', format: DbcFieldFormat.intType),
    FieldDefinition(index: 3, name: 'Flags', description: '标志', format: DbcFieldFormat.na),
  ],
);
