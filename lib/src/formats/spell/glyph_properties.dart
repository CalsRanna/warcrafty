/// GlyphProperties.dbc - 雕文属性格式
library;

import '../base/field_definition.dart';
import '../base/structure_definition.dart';
import '../../core/field_format.dart';

/// GlyphProperties 格式字符串
const String glyphPropertiesFormat = 'niix';

/// GlyphProperties 结构定义
const DbcStructureDefinition glyphProperties = DbcStructureDefinition(
  name: 'GlyphProperties',
  format: glyphPropertiesFormat,
  fields: [
    FieldDefinition(index: 0, name: 'ID', description: 'ID', format: DbcFieldFormat.intType),
    FieldDefinition(index: 1, name: 'SpellID', description: '法术 ID', format: DbcFieldFormat.intType),
    FieldDefinition(index: 2, name: 'GlyphExclusiveCategoryID', description: '雕文独占类别 ID', format: DbcFieldFormat.intType),
    FieldDefinition(index: 3, name: 'Flags', description: '标志', format: DbcFieldFormat.na),
  ],
);
