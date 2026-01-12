import 'package:warcrafty/src/core/field_definition.dart';
import 'package:warcrafty/src/core/structure_definition.dart';
import 'package:warcrafty/src/core/field_format.dart';

/// CharHairGeosets 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
const charHairGeosets = DbcStructureDefinition(
  name: 'CharHairGeosets',
  format: 'niiiii',
  fields: [
    FieldDefinition(index: 0, name: 'ID', description: 'ID', format: DbcFieldFormat.indexField),
    FieldDefinition(index: 1, name: 'RaceID', description: 'RaceID', format: DbcFieldFormat.intType),
    FieldDefinition(index: 2, name: 'SexID', description: 'SexID', format: DbcFieldFormat.intType),
    FieldDefinition(index: 3, name: 'VariationID', description: 'VariationID', format: DbcFieldFormat.intType),
    FieldDefinition(index: 4, name: 'GeosetID', description: 'GeosetID', format: DbcFieldFormat.intType),
    FieldDefinition(index: 5, name: 'Showscalp', description: 'Showscalp', format: DbcFieldFormat.intType),
  ],
);
