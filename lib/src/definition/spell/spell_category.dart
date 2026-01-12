import 'package:warcrafty/src/definition/base/field_definition.dart';
import 'package:warcrafty/src/definition/base/structure_definition.dart';
import 'package:warcrafty/src/core/field_format.dart';

/// SpellCategory 格式字符串

/// SpellCategory 结构定义
const spellCategory = DbcStructureDefinition(
  name: 'SpellCategory',
  format: 'ni',
  fields: [
    FieldDefinition(index: 0, name: 'ID', description: 'ID', format: DbcFieldFormat.intType),
    FieldDefinition(index: 1, name: 'Flags', description: '标志', format: DbcFieldFormat.intType),
  ],
);
