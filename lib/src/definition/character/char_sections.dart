import 'package:warcrafty/src/schema/field.dart';
import 'package:warcrafty/src/schema/schema.dart';

/// CharSections 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
const charSections = DbcSchema(
  name: 'CharSections',
  format: 'niiisssiii',
  fields: [
    Field(index: 0, name: 'ID', description: 'ID', type: FieldType.id),
    Field(index: 1, name: 'RaceID', description: 'RaceID', type: FieldType.int32),
    Field(index: 2, name: 'SexID', description: 'SexID', type: FieldType.int32),
    Field(index: 3, name: 'BaseSection', description: 'BaseSection', type: FieldType.int32),
    Field(index: 4, name: 'TextureName0', description: 'TextureName 0', type: FieldType.string),
    Field(index: 5, name: 'TextureName1', description: 'TextureName 1', type: FieldType.string),
    Field(index: 6, name: 'TextureName2', description: 'TextureName 2', type: FieldType.string),
    Field(index: 7, name: 'Flags', description: 'Flags', type: FieldType.int32),
    Field(index: 8, name: 'VariationIndex', description: 'VariationIndex', type: FieldType.int32),
    Field(index: 9, name: 'ColorIndex', description: 'ColorIndex', type: FieldType.int32),
  ],
);
