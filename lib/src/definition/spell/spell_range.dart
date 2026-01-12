import 'package:warcrafty/src/definition/base/field_definition.dart';
import 'package:warcrafty/src/definition/base/structure_definition.dart';
import 'package:warcrafty/src/core/field_format.dart';

/// SpellRange 格式字符串

/// SpellRange 结构定义
const spellRange = DbcStructureDefinition(
  name: 'SpellRange',
  format: 'nffffixxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx',
  fields: [
    FieldDefinition(index: 0, name: 'ID', description: '范围 ID', format: DbcFieldFormat.intType),
    FieldDefinition(index: 1, name: 'RangeMinHostile', description: '敌对最小范围', format: DbcFieldFormat.float),
    FieldDefinition(index: 2, name: 'RangeMinFriendly', description: '友好最小范围', format: DbcFieldFormat.float),
    FieldDefinition(index: 3, name: 'RangeMaxHostile', description: '敌对最大范围', format: DbcFieldFormat.float),
    FieldDefinition(index: 4, name: 'RangeMaxFriendly', description: '友好最大范围', format: DbcFieldFormat.float),
    FieldDefinition(index: 5, name: 'Flags', description: '标志', format: DbcFieldFormat.intType),
  ],
);
