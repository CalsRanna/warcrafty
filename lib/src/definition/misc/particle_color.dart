import 'package:warcrafty/src/definition/base/field_definition.dart';
import 'package:warcrafty/src/definition/base/structure_definition.dart';
import 'package:warcrafty/src/core/field_format.dart';

/// ParticleColor 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
const particleColor = DbcStructureDefinition(
  name: 'ParticleColor',
  format: 'niiiiiiiii',
  fields: [
    FieldDefinition(index: 0, name: 'ID', description: 'ID', format: DbcFieldFormat.indexField),
    FieldDefinition(index: 1, name: 'Start0', description: 'Start 0', format: DbcFieldFormat.intType),
    FieldDefinition(index: 2, name: 'Start1', description: 'Start 1', format: DbcFieldFormat.intType),
    FieldDefinition(index: 3, name: 'Start2', description: 'Start 2', format: DbcFieldFormat.intType),
    FieldDefinition(index: 4, name: 'MID0', description: 'MID 0', format: DbcFieldFormat.intType),
    FieldDefinition(index: 5, name: 'MID1', description: 'MID 1', format: DbcFieldFormat.intType),
    FieldDefinition(index: 6, name: 'MID2', description: 'MID 2', format: DbcFieldFormat.intType),
    FieldDefinition(index: 7, name: 'End0', description: 'End 0', format: DbcFieldFormat.intType),
    FieldDefinition(index: 8, name: 'End1', description: 'End 1', format: DbcFieldFormat.intType),
    FieldDefinition(index: 9, name: 'End2', description: 'End 2', format: DbcFieldFormat.intType),
  ],
);
