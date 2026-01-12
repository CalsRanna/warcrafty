/// GlyphSlot.dbc - 雕文槽格式
library;

import '../base/field_definition.dart';
import '../base/structure_definition.dart';
import '../../core/field_format.dart';

/// GlyphSlot 格式字符串
const String glyphSlotFormat = 'nii';

/// GlyphSlot 结构定义
const DbcStructureDefinition glyphSlot = DbcStructureDefinition(
  name: 'GlyphSlot',
  format: glyphSlotFormat,
  fields: [
    FieldDefinition(index: 0, name: 'ID', description: 'ID', format: DbcFieldFormat.intType),
    FieldDefinition(index: 1, name: 'Type', description: '类型', format: DbcFieldFormat.intType),
    FieldDefinition(index: 2, name: 'Slot', description: '槽位', format: DbcFieldFormat.intType),
  ],
);
