import 'package:warcrafty/src/definition/base/field_definition.dart';
import 'package:warcrafty/src/definition/base/structure_definition.dart';
import 'package:warcrafty/src/core/field_format.dart';

/// SpellDuration 格式字符串

/// SpellDuration 结构定义
const spellDuration = DbcStructureDefinition(
  name: 'SpellDuration',
  format: 'niii',
  fields: [
    FieldDefinition(index: 0, name: 'ID', description: '持续时间 ID', format: DbcFieldFormat.intType),
    FieldDefinition(index: 1, name: 'Duration0', description: '持续时间 0', format: DbcFieldFormat.intType),
    FieldDefinition(index: 2, name: 'Duration1', description: '持续时间 1', format: DbcFieldFormat.intType),
    FieldDefinition(index: 3, name: 'Duration2', description: '持续时间 2', format: DbcFieldFormat.intType),
  ],
);
