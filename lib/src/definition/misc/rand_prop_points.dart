import 'package:warcrafty/src/core/field_definition.dart';
import 'package:warcrafty/src/core/structure_definition.dart';
import 'package:warcrafty/src/core/field_format.dart';

/// RandPropPoints 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
const randPropPoints = DbcStructureDefinition(
  name: 'RandPropPoints',
  format: 'niiiiiiiiiiiiiii',
  fields: [
    FieldDefinition(index: 0, name: 'ID', description: 'ID', format: DbcFieldFormat.indexField),
    FieldDefinition(index: 1, name: 'Epic0', description: 'Epic 0', format: DbcFieldFormat.intType),
    FieldDefinition(index: 2, name: 'Epic1', description: 'Epic 1', format: DbcFieldFormat.intType),
    FieldDefinition(index: 3, name: 'Epic2', description: 'Epic 2', format: DbcFieldFormat.intType),
    FieldDefinition(index: 4, name: 'Epic3', description: 'Epic 3', format: DbcFieldFormat.intType),
    FieldDefinition(index: 5, name: 'Epic4', description: 'Epic 4', format: DbcFieldFormat.intType),
    FieldDefinition(index: 6, name: 'Superior0', description: 'Superior 0', format: DbcFieldFormat.intType),
    FieldDefinition(index: 7, name: 'Superior1', description: 'Superior 1', format: DbcFieldFormat.intType),
    FieldDefinition(index: 8, name: 'Superior2', description: 'Superior 2', format: DbcFieldFormat.intType),
    FieldDefinition(index: 9, name: 'Superior3', description: 'Superior 3', format: DbcFieldFormat.intType),
    FieldDefinition(index: 10, name: 'Superior4', description: 'Superior 4', format: DbcFieldFormat.intType),
    FieldDefinition(index: 11, name: 'Good0', description: 'Good 0', format: DbcFieldFormat.intType),
    FieldDefinition(index: 12, name: 'Good1', description: 'Good 1', format: DbcFieldFormat.intType),
    FieldDefinition(index: 13, name: 'Good2', description: 'Good 2', format: DbcFieldFormat.intType),
    FieldDefinition(index: 14, name: 'Good3', description: 'Good 3', format: DbcFieldFormat.intType),
    FieldDefinition(index: 15, name: 'Good4', description: 'Good 4', format: DbcFieldFormat.intType),
  ],
);
