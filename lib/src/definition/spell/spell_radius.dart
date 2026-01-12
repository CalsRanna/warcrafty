/// SpellRadius.dbc - 法术半径格式
library;

import '../base/field_definition.dart';
import '../base/structure_definition.dart';
import '../../core/field_format.dart';

/// SpellRadius 格式字符串
const String spellRadiusFormat = 'nfff';

/// SpellRadius 结构定义
const DbcStructureDefinition spellRadius = DbcStructureDefinition(
  name: 'SpellRadius',
  format: spellRadiusFormat,
  fields: [
    FieldDefinition(index: 0, name: 'ID', description: 'ID', format: DbcFieldFormat.intType),
    FieldDefinition(index: 1, name: 'Radius', description: '半径', format: DbcFieldFormat.float),
    FieldDefinition(index: 2, name: 'Radius2', description: '半径 2', format: DbcFieldFormat.float),
    FieldDefinition(index: 3, name: 'Radius3', description: '半径 3', format: DbcFieldFormat.float),
  ],
);
