import 'package:warcrafty/src/core/field_definition.dart';
import 'package:warcrafty/src/core/structure_definition.dart';
import 'package:warcrafty/src/core/field_format.dart';

/// CharSections 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
const charSections = DbcStructureDefinition(
  name: 'CharSections',
  format: 'niiisssiii',
  fields: [
    FieldDefinition(index: 0, name: 'ID', description: 'ID', format: DbcFieldFormat.indexField),
    FieldDefinition(index: 1, name: 'RaceID', description: 'RaceID', format: DbcFieldFormat.intType),
    FieldDefinition(index: 2, name: 'SexID', description: 'SexID', format: DbcFieldFormat.intType),
    FieldDefinition(index: 3, name: 'BaseSection', description: 'BaseSection', format: DbcFieldFormat.intType),
    FieldDefinition(index: 4, name: 'TextureName0', description: 'TextureName 0', format: DbcFieldFormat.string),
    FieldDefinition(index: 5, name: 'TextureName1', description: 'TextureName 1', format: DbcFieldFormat.string),
    FieldDefinition(index: 6, name: 'TextureName2', description: 'TextureName 2', format: DbcFieldFormat.string),
    FieldDefinition(index: 7, name: 'Flags', description: 'Flags', format: DbcFieldFormat.intType),
    FieldDefinition(index: 8, name: 'VariationIndex', description: 'VariationIndex', format: DbcFieldFormat.intType),
    FieldDefinition(index: 9, name: 'ColorIndex', description: 'ColorIndex', format: DbcFieldFormat.intType),
  ],
);
