import 'package:warcrafty/src/definition/base/field_definition.dart';
import 'package:warcrafty/src/definition/base/structure_definition.dart';
import 'package:warcrafty/src/core/field_format.dart';

/// SpellFocusObject 格式字符串

/// SpellFocusObject 结构定义
const spellFocusObject = DbcStructureDefinition(
  name: 'SpellFocusObject',
  format: 'nxxxxxxxxxxxxxxxxx',
  fields: [
    FieldDefinition(index: 0, name: 'ID', description: 'ID', format: DbcFieldFormat.intType),
    FieldDefinition(index: 1, name: 'Name', description: '名称', format: DbcFieldFormat.na),
  ],
);
