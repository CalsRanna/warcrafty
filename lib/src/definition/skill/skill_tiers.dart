import 'package:warcrafty/src/definition/base/field_definition.dart';
import 'package:warcrafty/src/definition/base/structure_definition.dart';
import 'package:warcrafty/src/core/field_format.dart';

/// SkillTiers 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
const skillTiers = DbcStructureDefinition(
  name: 'SkillTiers',
  format: 'niiiiiiiiiiiiiiiiiiiiiiiiiiiiiiii',
  fields: [
    FieldDefinition(index: 0, name: 'ID', description: 'ID', format: DbcFieldFormat.indexField),
    FieldDefinition(index: 1, name: 'Cost0', description: 'Cost 0', format: DbcFieldFormat.intType),
    FieldDefinition(index: 2, name: 'Cost1', description: 'Cost 1', format: DbcFieldFormat.intType),
    FieldDefinition(index: 3, name: 'Cost2', description: 'Cost 2', format: DbcFieldFormat.intType),
    FieldDefinition(index: 4, name: 'Cost3', description: 'Cost 3', format: DbcFieldFormat.intType),
    FieldDefinition(index: 5, name: 'Cost4', description: 'Cost 4', format: DbcFieldFormat.intType),
    FieldDefinition(index: 6, name: 'Cost5', description: 'Cost 5', format: DbcFieldFormat.intType),
    FieldDefinition(index: 7, name: 'Cost6', description: 'Cost 6', format: DbcFieldFormat.intType),
    FieldDefinition(index: 8, name: 'Cost7', description: 'Cost 7', format: DbcFieldFormat.intType),
    FieldDefinition(index: 9, name: 'Cost8', description: 'Cost 8', format: DbcFieldFormat.intType),
    FieldDefinition(index: 10, name: 'Cost9', description: 'Cost 9', format: DbcFieldFormat.intType),
    FieldDefinition(index: 11, name: 'Cost10', description: 'Cost 10', format: DbcFieldFormat.intType),
    FieldDefinition(index: 12, name: 'Cost11', description: 'Cost 11', format: DbcFieldFormat.intType),
    FieldDefinition(index: 13, name: 'Cost12', description: 'Cost 12', format: DbcFieldFormat.intType),
    FieldDefinition(index: 14, name: 'Cost13', description: 'Cost 13', format: DbcFieldFormat.intType),
    FieldDefinition(index: 15, name: 'Cost14', description: 'Cost 14', format: DbcFieldFormat.intType),
    FieldDefinition(index: 16, name: 'Cost15', description: 'Cost 15', format: DbcFieldFormat.intType),
    FieldDefinition(index: 17, name: 'Value0', description: 'Value 0', format: DbcFieldFormat.intType),
    FieldDefinition(index: 18, name: 'Value1', description: 'Value 1', format: DbcFieldFormat.intType),
    FieldDefinition(index: 19, name: 'Value2', description: 'Value 2', format: DbcFieldFormat.intType),
    FieldDefinition(index: 20, name: 'Value3', description: 'Value 3', format: DbcFieldFormat.intType),
    FieldDefinition(index: 21, name: 'Value4', description: 'Value 4', format: DbcFieldFormat.intType),
    FieldDefinition(index: 22, name: 'Value5', description: 'Value 5', format: DbcFieldFormat.intType),
    FieldDefinition(index: 23, name: 'Value6', description: 'Value 6', format: DbcFieldFormat.intType),
    FieldDefinition(index: 24, name: 'Value7', description: 'Value 7', format: DbcFieldFormat.intType),
    FieldDefinition(index: 25, name: 'Value8', description: 'Value 8', format: DbcFieldFormat.intType),
    FieldDefinition(index: 26, name: 'Value9', description: 'Value 9', format: DbcFieldFormat.intType),
    FieldDefinition(index: 27, name: 'Value10', description: 'Value 10', format: DbcFieldFormat.intType),
    FieldDefinition(index: 28, name: 'Value11', description: 'Value 11', format: DbcFieldFormat.intType),
    FieldDefinition(index: 29, name: 'Value12', description: 'Value 12', format: DbcFieldFormat.intType),
    FieldDefinition(index: 30, name: 'Value13', description: 'Value 13', format: DbcFieldFormat.intType),
    FieldDefinition(index: 31, name: 'Value14', description: 'Value 14', format: DbcFieldFormat.intType),
    FieldDefinition(index: 32, name: 'Value15', description: 'Value 15', format: DbcFieldFormat.intType),
  ],
);
