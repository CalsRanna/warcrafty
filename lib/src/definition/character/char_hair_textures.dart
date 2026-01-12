import 'package:warcrafty/src/definition/base/field_definition.dart';
import 'package:warcrafty/src/definition/base/structure_definition.dart';
import 'package:warcrafty/src/core/field_format.dart';

/// CharHairTextures 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
const charHairTextures = DbcStructureDefinition(
  name: 'CharHairTextures',
  format: 'niiiiiii',
  fields: [
    FieldDefinition(index: 0, name: 'ID', description: 'ID', format: DbcFieldFormat.indexField),
    FieldDefinition(index: 1, name: 'Field_0_5_3_3368_001_race', description: 'Field_0_5_3_3368_001_race', format: DbcFieldFormat.intType),
    FieldDefinition(index: 2, name: 'Field_0_5_3_3368_002_gender', description: 'Field_0_5_3_3368_002_gender', format: DbcFieldFormat.intType),
    FieldDefinition(index: 3, name: 'Field_0_5_3_3368_003', description: 'Field_0_5_3_3368_003', format: DbcFieldFormat.intType),
    FieldDefinition(index: 4, name: 'Field_0_5_3_3368_004_mayberacemask', description: 'Field_0_5_3_3368_004_mayberacemask', format: DbcFieldFormat.intType),
    FieldDefinition(index: 5, name: 'Field_0_5_3_3368_005_the_x_in_hair_xy_blp', description: 'Field_0_5_3_3368_005_the_x_in_hair_xy_blp', format: DbcFieldFormat.intType),
    FieldDefinition(index: 6, name: 'Field_0_5_3_3368_006', description: 'Field_0_5_3_3368_006', format: DbcFieldFormat.intType),
    FieldDefinition(index: 7, name: 'Field_0_5_3_3368_007', description: 'Field_0_5_3_3368_007', format: DbcFieldFormat.intType),
  ],
);
