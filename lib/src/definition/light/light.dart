import 'package:warcrafty/src/core/field_definition.dart';
import 'package:warcrafty/src/core/structure_definition.dart';
import 'package:warcrafty/src/core/field_format.dart';

/// Light 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
const light = DbcStructureDefinition(
  name: 'Light',
  format: 'nifffffiiiiiiii',
  fields: [
    FieldDefinition(index: 0, name: 'ID', description: 'ID', format: DbcFieldFormat.indexField),
    FieldDefinition(index: 1, name: 'ContinentID', description: 'ContinentID', format: DbcFieldFormat.intType),
    FieldDefinition(index: 2, name: 'GameCoords0', description: 'GameCoords 0', format: DbcFieldFormat.float),
    FieldDefinition(index: 3, name: 'GameCoords1', description: 'GameCoords 1', format: DbcFieldFormat.float),
    FieldDefinition(index: 4, name: 'GameCoords2', description: 'GameCoords 2', format: DbcFieldFormat.float),
    FieldDefinition(index: 5, name: 'GameFalloffStart', description: 'GameFalloffStart', format: DbcFieldFormat.float),
    FieldDefinition(index: 6, name: 'GameFalloffEnd', description: 'GameFalloffEnd', format: DbcFieldFormat.float),
    FieldDefinition(index: 7, name: 'LightParamsID0', description: 'LightParamsID 0', format: DbcFieldFormat.intType),
    FieldDefinition(index: 8, name: 'LightParamsID1', description: 'LightParamsID 1', format: DbcFieldFormat.intType),
    FieldDefinition(index: 9, name: 'LightParamsID2', description: 'LightParamsID 2', format: DbcFieldFormat.intType),
    FieldDefinition(index: 10, name: 'LightParamsID3', description: 'LightParamsID 3', format: DbcFieldFormat.intType),
    FieldDefinition(index: 11, name: 'LightParamsID4', description: 'LightParamsID 4', format: DbcFieldFormat.intType),
    FieldDefinition(index: 12, name: 'LightParamsID5', description: 'LightParamsID 5', format: DbcFieldFormat.intType),
    FieldDefinition(index: 13, name: 'LightParamsID6', description: 'LightParamsID 6', format: DbcFieldFormat.intType),
    FieldDefinition(index: 14, name: 'LightParamsID7', description: 'LightParamsID 7', format: DbcFieldFormat.intType),
  ],
);
