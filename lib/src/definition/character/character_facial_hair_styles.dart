import 'package:warcrafty/src/definition/base/field_definition.dart';
import 'package:warcrafty/src/definition/base/structure_definition.dart';
import 'package:warcrafty/src/core/field_format.dart';

/// CharacterFacialHairStyles 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
const characterFacialHairStyles = DbcStructureDefinition(
  name: 'CharacterFacialHairStyles',
  format: 'iiiiiiii',
  fields: [
    FieldDefinition(index: 0, name: 'RaceID', description: 'RaceID', format: DbcFieldFormat.intType),
    FieldDefinition(index: 1, name: 'SexID', description: 'SexID', format: DbcFieldFormat.intType),
    FieldDefinition(index: 2, name: 'VariationID', description: 'VariationID', format: DbcFieldFormat.intType),
    FieldDefinition(index: 3, name: 'Geoset0', description: 'Geoset 0', format: DbcFieldFormat.intType),
    FieldDefinition(index: 4, name: 'Geoset1', description: 'Geoset 1', format: DbcFieldFormat.intType),
    FieldDefinition(index: 5, name: 'Geoset2', description: 'Geoset 2', format: DbcFieldFormat.intType),
    FieldDefinition(index: 6, name: 'Geoset3', description: 'Geoset 3', format: DbcFieldFormat.intType),
    FieldDefinition(index: 7, name: 'Geoset4', description: 'Geoset 4', format: DbcFieldFormat.intType),
  ],
);
