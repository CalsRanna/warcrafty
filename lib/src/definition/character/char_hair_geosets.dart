import 'package:warcrafty/src/schema/field.dart';
import 'package:warcrafty/src/schema/schema.dart';

/// CharHairGeosets 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
const charHairGeosets = DbcSchema(
  name: 'CharHairGeosets',
  format: 'niiiii',
  fields: [
    Field(index: 0, name: 'ID', description: 'ID', type: FieldType.id),
    Field(index: 1, name: 'RaceID', description: 'RaceID', type: FieldType.int32),
    Field(index: 2, name: 'SexID', description: 'SexID', type: FieldType.int32),
    Field(index: 3, name: 'VariationID', description: 'VariationID', type: FieldType.int32),
    Field(index: 4, name: 'GeosetID', description: 'GeosetID', type: FieldType.int32),
    Field(index: 5, name: 'Showscalp', description: 'Showscalp', type: FieldType.int32),
  ],
);
