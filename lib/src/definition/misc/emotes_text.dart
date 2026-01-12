import 'package:warcrafty/src/core/field_definition.dart';
import 'package:warcrafty/src/core/structure_definition.dart';
import 'package:warcrafty/src/core/field_format.dart';

/// EmotesText 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
const emotesText = DbcStructureDefinition(
  name: 'EmotesText',
  format: 'nsiiiiiiiiiiiiiiiii',
  fields: [
    FieldDefinition(index: 0, name: 'ID', description: 'ID', format: DbcFieldFormat.indexField),
    FieldDefinition(index: 1, name: 'Name', description: 'Name', format: DbcFieldFormat.string),
    FieldDefinition(index: 2, name: 'EmoteID', description: 'EmoteID', format: DbcFieldFormat.intType),
    FieldDefinition(index: 3, name: 'EmoteText0', description: 'EmoteText 0', format: DbcFieldFormat.intType),
    FieldDefinition(index: 4, name: 'EmoteText1', description: 'EmoteText 1', format: DbcFieldFormat.intType),
    FieldDefinition(index: 5, name: 'EmoteText2', description: 'EmoteText 2', format: DbcFieldFormat.intType),
    FieldDefinition(index: 6, name: 'EmoteText3', description: 'EmoteText 3', format: DbcFieldFormat.intType),
    FieldDefinition(index: 7, name: 'EmoteText4', description: 'EmoteText 4', format: DbcFieldFormat.intType),
    FieldDefinition(index: 8, name: 'EmoteText5', description: 'EmoteText 5', format: DbcFieldFormat.intType),
    FieldDefinition(index: 9, name: 'EmoteText6', description: 'EmoteText 6', format: DbcFieldFormat.intType),
    FieldDefinition(index: 10, name: 'EmoteText7', description: 'EmoteText 7', format: DbcFieldFormat.intType),
    FieldDefinition(index: 11, name: 'EmoteText8', description: 'EmoteText 8', format: DbcFieldFormat.intType),
    FieldDefinition(index: 12, name: 'EmoteText9', description: 'EmoteText 9', format: DbcFieldFormat.intType),
    FieldDefinition(index: 13, name: 'EmoteText10', description: 'EmoteText 10', format: DbcFieldFormat.intType),
    FieldDefinition(index: 14, name: 'EmoteText11', description: 'EmoteText 11', format: DbcFieldFormat.intType),
    FieldDefinition(index: 15, name: 'EmoteText12', description: 'EmoteText 12', format: DbcFieldFormat.intType),
    FieldDefinition(index: 16, name: 'EmoteText13', description: 'EmoteText 13', format: DbcFieldFormat.intType),
    FieldDefinition(index: 17, name: 'EmoteText14', description: 'EmoteText 14', format: DbcFieldFormat.intType),
    FieldDefinition(index: 18, name: 'EmoteText15', description: 'EmoteText 15', format: DbcFieldFormat.intType),
  ],
);
