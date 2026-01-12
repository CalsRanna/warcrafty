import 'package:warcrafty/src/definition/base/field_definition.dart';
import 'package:warcrafty/src/definition/base/structure_definition.dart';
import 'package:warcrafty/src/core/field_format.dart';

/// SummonProperties 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
const summonProperties = DbcStructureDefinition(
  name: 'SummonProperties',
  format: 'niiiii',
  fields: [
    FieldDefinition(index: 0, name: 'ID', description: 'ID', format: DbcFieldFormat.indexField),
    FieldDefinition(index: 1, name: 'Control', description: 'Control', format: DbcFieldFormat.intType),
    FieldDefinition(index: 2, name: 'Faction', description: 'Faction', format: DbcFieldFormat.intType),
    FieldDefinition(index: 3, name: 'Title', description: 'Title', format: DbcFieldFormat.intType),
    FieldDefinition(index: 4, name: 'Slot', description: 'Slot', format: DbcFieldFormat.intType),
    FieldDefinition(index: 5, name: 'Flags', description: 'Flags', format: DbcFieldFormat.intType),
  ],
);
