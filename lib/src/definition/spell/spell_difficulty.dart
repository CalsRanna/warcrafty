/// SpellDifficulty.dbc - 法术难度格式
library;

import '../base/field_definition.dart';
import '../base/structure_definition.dart';
import '../../core/field_format.dart';

/// SpellDifficulty 格式字符串
const String spellDifficultyFormat = 'niiii';

/// SpellDifficulty 结构定义
const DbcStructureDefinition spellDifficulty = DbcStructureDefinition(
  name: 'SpellDifficulty',
  format: spellDifficultyFormat,
  fields: [
    FieldDefinition(index: 0, name: 'ID', description: 'ID', format: DbcFieldFormat.intType),
    FieldDefinition(index: 1, name: 'SpellID0', description: '法术 ID 0', format: DbcFieldFormat.intType),
    FieldDefinition(index: 2, name: 'SpellID1', description: '法术 ID 1', format: DbcFieldFormat.intType),
    FieldDefinition(index: 3, name: 'SpellID2', description: '法术 ID 2', format: DbcFieldFormat.intType),
    FieldDefinition(index: 4, name: 'SpellID3', description: '法术 ID 3', format: DbcFieldFormat.intType),
  ],
);
