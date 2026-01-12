/// SpellFocusObject.dbc - 法术焦点对象格式
library;

import '../base/field_definition.dart';
import '../base/structure_definition.dart';
import '../../core/field_format.dart';

/// SpellFocusObject 格式字符串
const String spellFocusObjectFormat = 'nxxxxxxxxxxxxxxxxx';

/// SpellFocusObject 结构定义
const DbcStructureDefinition spellFocusObject = DbcStructureDefinition(
  name: 'SpellFocusObject',
  format: spellFocusObjectFormat,
  fields: [
    FieldDefinition(index: 0, name: 'ID', description: 'ID', format: DbcFieldFormat.intType),
    FieldDefinition(index: 1, name: 'Name', description: '名称', format: DbcFieldFormat.na),
  ],
);
