import 'package:warcrafty/src/definition/base/field_definition.dart';
import 'package:warcrafty/src/definition/base/structure_definition.dart';
import 'package:warcrafty/src/core/field_format.dart';

/// SpellRadius 格式字符串

/// SpellRadius 结构定义
const spellRadius = DbcStructureDefinition(
  name: 'SpellRadius',
  format: 'nfff',
  fields: [
    FieldDefinition(index: 0, name: 'ID', description: 'ID', format: DbcFieldFormat.intType),
    FieldDefinition(index: 1, name: 'Radius', description: '半径', format: DbcFieldFormat.float),
    FieldDefinition(index: 2, name: 'Radius2', description: '半径 2', format: DbcFieldFormat.float),
    FieldDefinition(index: 3, name: 'Radius3', description: '半径 3', format: DbcFieldFormat.float),
  ],
);
