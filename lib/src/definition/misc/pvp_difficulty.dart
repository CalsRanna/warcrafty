import 'package:warcrafty/src/core/field_definition.dart';
import 'package:warcrafty/src/core/structure_definition.dart';
import 'package:warcrafty/src/core/field_format.dart';

/// PvpDifficulty 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
const pvpDifficulty = DbcStructureDefinition(
  name: 'PvpDifficulty',
  format: 'niiiii',
  fields: [
    FieldDefinition(index: 0, name: 'ID', description: 'ID', format: DbcFieldFormat.indexField),
    FieldDefinition(index: 1, name: 'MapID', description: 'MapID', format: DbcFieldFormat.intType),
    FieldDefinition(index: 2, name: 'RangeIndex', description: 'RangeIndex', format: DbcFieldFormat.intType),
    FieldDefinition(index: 3, name: 'MinLevel', description: 'MinLevel', format: DbcFieldFormat.intType),
    FieldDefinition(index: 4, name: 'MaxLevel', description: 'MaxLevel', format: DbcFieldFormat.intType),
    FieldDefinition(index: 5, name: 'Difficulty', description: 'Difficulty', format: DbcFieldFormat.intType),
  ],
);
