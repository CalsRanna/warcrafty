import 'package:warcrafty/src/core/field_definition.dart';
import 'package:warcrafty/src/core/structure_definition.dart';
import 'package:warcrafty/src/core/field_format.dart';

/// GroundEffectTexture 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
const groundEffectTexture = DbcStructureDefinition(
  name: 'GroundEffectTexture',
  format: 'niiiiiiiiii',
  fields: [
    FieldDefinition(index: 0, name: 'ID', description: 'ID', format: DbcFieldFormat.indexField),
    FieldDefinition(index: 1, name: 'DoodadID0', description: 'DoodadID 0', format: DbcFieldFormat.intType),
    FieldDefinition(index: 2, name: 'DoodadID1', description: 'DoodadID 1', format: DbcFieldFormat.intType),
    FieldDefinition(index: 3, name: 'DoodadID2', description: 'DoodadID 2', format: DbcFieldFormat.intType),
    FieldDefinition(index: 4, name: 'DoodadID3', description: 'DoodadID 3', format: DbcFieldFormat.intType),
    FieldDefinition(index: 5, name: 'DoodadWeight0', description: 'DoodadWeight 0', format: DbcFieldFormat.intType),
    FieldDefinition(index: 6, name: 'DoodadWeight1', description: 'DoodadWeight 1', format: DbcFieldFormat.intType),
    FieldDefinition(index: 7, name: 'DoodadWeight2', description: 'DoodadWeight 2', format: DbcFieldFormat.intType),
    FieldDefinition(index: 8, name: 'DoodadWeight3', description: 'DoodadWeight 3', format: DbcFieldFormat.intType),
    FieldDefinition(index: 9, name: 'Density', description: 'Density', format: DbcFieldFormat.intType),
    FieldDefinition(index: 10, name: 'Sound', description: 'Sound', format: DbcFieldFormat.intType),
  ],
);
