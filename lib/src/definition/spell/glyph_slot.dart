import 'package:warcrafty/src/definition/base/field_definition.dart';
import 'package:warcrafty/src/definition/base/structure_definition.dart';
import 'package:warcrafty/src/core/field_format.dart';

/// GlyphSlot 格式字符串

/// GlyphSlot 结构定义
const glyphSlot = DbcStructureDefinition(
  name: 'GlyphSlot',
  format: 'nii',
  fields: [
    FieldDefinition(index: 0, name: 'ID', description: 'ID', format: DbcFieldFormat.intType),
    FieldDefinition(index: 1, name: 'Type', description: '类型', format: DbcFieldFormat.intType),
    FieldDefinition(index: 2, name: 'Slot', description: '槽位', format: DbcFieldFormat.intType),
  ],
);
