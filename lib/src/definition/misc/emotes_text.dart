import 'package:warcrafty/src/schema/field.dart';
import 'package:warcrafty/src/schema/schema.dart';

/// EmotesText 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
const emotesText = DbcSchema(
  name: 'EmotesText',
  format: 'nsiiiiiiiiiiiiiiiii',
  fields: [
    Field(index: 0, name: 'ID', description: 'ID', type: FieldType.id),
    Field(index: 1, name: 'Name', description: 'Name', type: FieldType.string),
    Field(index: 2, name: 'EmoteID', description: 'EmoteID', type: FieldType.int32),
    Field(index: 3, name: 'EmoteText0', description: 'EmoteText 0', type: FieldType.int32),
    Field(index: 4, name: 'EmoteText1', description: 'EmoteText 1', type: FieldType.int32),
    Field(index: 5, name: 'EmoteText2', description: 'EmoteText 2', type: FieldType.int32),
    Field(index: 6, name: 'EmoteText3', description: 'EmoteText 3', type: FieldType.int32),
    Field(index: 7, name: 'EmoteText4', description: 'EmoteText 4', type: FieldType.int32),
    Field(index: 8, name: 'EmoteText5', description: 'EmoteText 5', type: FieldType.int32),
    Field(index: 9, name: 'EmoteText6', description: 'EmoteText 6', type: FieldType.int32),
    Field(index: 10, name: 'EmoteText7', description: 'EmoteText 7', type: FieldType.int32),
    Field(index: 11, name: 'EmoteText8', description: 'EmoteText 8', type: FieldType.int32),
    Field(index: 12, name: 'EmoteText9', description: 'EmoteText 9', type: FieldType.int32),
    Field(index: 13, name: 'EmoteText10', description: 'EmoteText 10', type: FieldType.int32),
    Field(index: 14, name: 'EmoteText11', description: 'EmoteText 11', type: FieldType.int32),
    Field(index: 15, name: 'EmoteText12', description: 'EmoteText 12', type: FieldType.int32),
    Field(index: 16, name: 'EmoteText13', description: 'EmoteText 13', type: FieldType.int32),
    Field(index: 17, name: 'EmoteText14', description: 'EmoteText 14', type: FieldType.int32),
    Field(index: 18, name: 'EmoteText15', description: 'EmoteText 15', type: FieldType.int32),
  ],
);
