/// SpellDuration.dbc - 法术持续时间格式
library;

import '../base/field_definition.dart';
import '../base/structure_definition.dart';
import '../../core/field_format.dart';

/// SpellDuration 格式字符串
const String spellDurationFormat = 'niii';

/// SpellDuration 结构定义
const DbcStructureDefinition spellDuration = DbcStructureDefinition(
  name: 'SpellDuration',
  format: spellDurationFormat,
  fields: [
    FieldDefinition(index: 0, name: 'ID', description: '持续时间 ID', format: DbcFieldFormat.intType),
    FieldDefinition(index: 1, name: 'Duration0', description: '持续时间 0', format: DbcFieldFormat.intType),
    FieldDefinition(index: 2, name: 'Duration1', description: '持续时间 1', format: DbcFieldFormat.intType),
    FieldDefinition(index: 3, name: 'Duration2', description: '持续时间 2', format: DbcFieldFormat.intType),
  ],
);
