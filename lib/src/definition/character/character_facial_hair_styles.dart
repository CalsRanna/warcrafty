import 'package:warcrafty/src/internal/field.dart';
import 'package:warcrafty/src/internal/schema.dart';

/// CharacterFacialHairStyles 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
const characterFacialHairStyles = DbcSchema(
  name: 'CharacterFacialHairStyles',
  format: 'iiiiiiii',
  fields: [
    Field(index: 0, name: 'RaceID', description: 'RaceID', type: FieldType.int32),
    Field(index: 1, name: 'SexID', description: 'SexID', type: FieldType.int32),
    Field(index: 2, name: 'VariationID', description: 'VariationID', type: FieldType.int32),
    Field(index: 3, name: 'Geoset0', description: 'Geoset 0', type: FieldType.int32),
    Field(index: 4, name: 'Geoset1', description: 'Geoset 1', type: FieldType.int32),
    Field(index: 5, name: 'Geoset2', description: 'Geoset 2', type: FieldType.int32),
    Field(index: 6, name: 'Geoset3', description: 'Geoset 3', type: FieldType.int32),
    Field(index: 7, name: 'Geoset4', description: 'Geoset 4', type: FieldType.int32),
  ],
);
