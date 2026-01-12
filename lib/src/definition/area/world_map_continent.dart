import 'package:warcrafty/src/definition/base/field_definition.dart';
import 'package:warcrafty/src/definition/base/structure_definition.dart';
import 'package:warcrafty/src/core/field_format.dart';

/// WorldMapContinent 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
const worldMapContinent = DbcStructureDefinition(
  name: 'WorldMapContinent',
  format: 'niiiiifffffffi',
  fields: [
    FieldDefinition(index: 0, name: 'ID', description: 'ID', format: DbcFieldFormat.indexField),
    FieldDefinition(index: 1, name: 'MapID', description: 'MapID', format: DbcFieldFormat.intType),
    FieldDefinition(index: 2, name: 'LeftBoundary', description: 'LeftBoundary', format: DbcFieldFormat.intType),
    FieldDefinition(index: 3, name: 'RightBoundary', description: 'RightBoundary', format: DbcFieldFormat.intType),
    FieldDefinition(index: 4, name: 'TopBoundary', description: 'TopBoundary', format: DbcFieldFormat.intType),
    FieldDefinition(index: 5, name: 'BottomBoundary', description: 'BottomBoundary', format: DbcFieldFormat.intType),
    FieldDefinition(index: 6, name: 'ContinentOffset0', description: 'ContinentOffset 0', format: DbcFieldFormat.float),
    FieldDefinition(index: 7, name: 'ContinentOffset1', description: 'ContinentOffset 1', format: DbcFieldFormat.float),
    FieldDefinition(index: 8, name: 'Scale', description: 'Scale', format: DbcFieldFormat.float),
    FieldDefinition(index: 9, name: 'TaxiMin0', description: 'TaxiMin 0', format: DbcFieldFormat.float),
    FieldDefinition(index: 10, name: 'TaxiMin1', description: 'TaxiMin 1', format: DbcFieldFormat.float),
    FieldDefinition(index: 11, name: 'TaxiMax0', description: 'TaxiMax 0', format: DbcFieldFormat.float),
    FieldDefinition(index: 12, name: 'TaxiMax1', description: 'TaxiMax 1', format: DbcFieldFormat.float),
    FieldDefinition(index: 13, name: 'WorldMapID', description: 'WorldMapID', format: DbcFieldFormat.intType),
  ],
);
