import 'package:warcrafty/src/schema/field.dart';
import 'package:warcrafty/src/schema/schema.dart';

/// CharHairTextures 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
const charHairTextures = DbcSchema(
  name: 'CharHairTextures',
  format: 'niiiiiii',
  fields: [
    Field(index: 0, name: 'ID', description: 'ID', type: FieldType.id),
    Field(index: 1, name: 'Field_0_5_3_3368_001_race', description: 'Field_0_5_3_3368_001_race', type: FieldType.int32),
    Field(index: 2, name: 'Field_0_5_3_3368_002_gender', description: 'Field_0_5_3_3368_002_gender', type: FieldType.int32),
    Field(index: 3, name: 'Field_0_5_3_3368_003', description: 'Field_0_5_3_3368_003', type: FieldType.int32),
    Field(index: 4, name: 'Field_0_5_3_3368_004_mayberacemask', description: 'Field_0_5_3_3368_004_mayberacemask', type: FieldType.int32),
    Field(index: 5, name: 'Field_0_5_3_3368_005_the_x_in_hair_xy_blp', description: 'Field_0_5_3_3368_005_the_x_in_hair_xy_blp', type: FieldType.int32),
    Field(index: 6, name: 'Field_0_5_3_3368_006', description: 'Field_0_5_3_3368_006', type: FieldType.int32),
    Field(index: 7, name: 'Field_0_5_3_3368_007', description: 'Field_0_5_3_3368_007', type: FieldType.int32),
  ],
);
