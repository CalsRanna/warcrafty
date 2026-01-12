import 'package:warcrafty/src/definition/base/field_definition.dart';
import 'package:warcrafty/src/definition/base/structure_definition.dart';
import 'package:warcrafty/src/core/field_format.dart';

/// SpellDifficulty 格式字符串

/// SpellDifficulty 结构定义
const spellDifficulty = DbcStructureDefinition(
  name: 'SpellDifficulty',
  format: 'niiii',
  fields: [
    FieldDefinition(index: 0, name: 'ID', description: 'ID', format: DbcFieldFormat.intType),
    FieldDefinition(index: 1, name: 'SpellID0', description: '法术 ID 0', format: DbcFieldFormat.intType),
    FieldDefinition(index: 2, name: 'SpellID1', description: '法术 ID 1', format: DbcFieldFormat.intType),
    FieldDefinition(index: 3, name: 'SpellID2', description: '法术 ID 2', format: DbcFieldFormat.intType),
    FieldDefinition(index: 4, name: 'SpellID3', description: '法术 ID 3', format: DbcFieldFormat.intType),
  ],
);
