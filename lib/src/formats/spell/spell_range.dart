/// SpellRange.dbc - 法术范围格式
library;

import '../base/field_definition.dart';
import '../base/structure_definition.dart';
import '../../core/field_format.dart';

/// SpellRange 格式字符串
const String spellRangeFormat = 'nffffixxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx';

/// SpellRange 结构定义
const DbcStructureDefinition spellRange = DbcStructureDefinition(
  name: 'SpellRange',
  format: spellRangeFormat,
  fields: [
    FieldDefinition(index: 0, name: 'ID', description: '范围 ID', format: DbcFieldFormat.intType),
    FieldDefinition(index: 1, name: 'RangeMinHostile', description: '敌对最小范围', format: DbcFieldFormat.float),
    FieldDefinition(index: 2, name: 'RangeMinFriendly', description: '友好最小范围', format: DbcFieldFormat.float),
    FieldDefinition(index: 3, name: 'RangeMaxHostile', description: '敌对最大范围', format: DbcFieldFormat.float),
    FieldDefinition(index: 4, name: 'RangeMaxFriendly', description: '友好最大范围', format: DbcFieldFormat.float),
    FieldDefinition(index: 5, name: 'Flags', description: '标志', format: DbcFieldFormat.intType),
  ],
);
