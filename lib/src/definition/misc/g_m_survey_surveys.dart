import 'package:warcrafty/src/definition/base/field_definition.dart';
import 'package:warcrafty/src/definition/base/structure_definition.dart';
import 'package:warcrafty/src/core/field_format.dart';

/// GMSurveySurveys 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
const gMSurveySurveys = DbcStructureDefinition(
  name: 'GMSurveySurveys',
  format: 'niiiiiiiiii',
  fields: [
    FieldDefinition(index: 0, name: 'ID', description: 'ID', format: DbcFieldFormat.indexField),
    FieldDefinition(index: 1, name: 'Q0', description: 'Q 0', format: DbcFieldFormat.intType),
    FieldDefinition(index: 2, name: 'Q1', description: 'Q 1', format: DbcFieldFormat.intType),
    FieldDefinition(index: 3, name: 'Q2', description: 'Q 2', format: DbcFieldFormat.intType),
    FieldDefinition(index: 4, name: 'Q3', description: 'Q 3', format: DbcFieldFormat.intType),
    FieldDefinition(index: 5, name: 'Q4', description: 'Q 4', format: DbcFieldFormat.intType),
    FieldDefinition(index: 6, name: 'Q5', description: 'Q 5', format: DbcFieldFormat.intType),
    FieldDefinition(index: 7, name: 'Q6', description: 'Q 6', format: DbcFieldFormat.intType),
    FieldDefinition(index: 8, name: 'Q7', description: 'Q 7', format: DbcFieldFormat.intType),
    FieldDefinition(index: 9, name: 'Q8', description: 'Q 8', format: DbcFieldFormat.intType),
    FieldDefinition(index: 10, name: 'Q9', description: 'Q 9', format: DbcFieldFormat.intType),
  ],
);
