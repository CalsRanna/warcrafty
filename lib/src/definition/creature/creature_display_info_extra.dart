import 'package:warcrafty/src/core/field_definition.dart';
import 'package:warcrafty/src/core/structure_definition.dart';
import 'package:warcrafty/src/core/field_format.dart';

/// CreatureDisplayInfoExtra 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
const creatureDisplayInfoExtra = DbcStructureDefinition(
  name: 'CreatureDisplayInfoExtra',
  format: 'niiiiiiiiiiiiiiiiiiis',
  fields: [
    FieldDefinition(index: 0, name: 'ID', description: 'ID', format: DbcFieldFormat.indexField),
    FieldDefinition(index: 1, name: 'DisplayRaceID', description: 'DisplayRaceID', format: DbcFieldFormat.intType),
    FieldDefinition(index: 2, name: 'DisplaySexID', description: 'DisplaySexID', format: DbcFieldFormat.intType),
    FieldDefinition(index: 3, name: 'SkinID', description: 'SkinID', format: DbcFieldFormat.intType),
    FieldDefinition(index: 4, name: 'FaceID', description: 'FaceID', format: DbcFieldFormat.intType),
    FieldDefinition(index: 5, name: 'HairStyleID', description: 'HairStyleID', format: DbcFieldFormat.intType),
    FieldDefinition(index: 6, name: 'HairColorID', description: 'HairColorID', format: DbcFieldFormat.intType),
    FieldDefinition(index: 7, name: 'FacialHairID', description: 'FacialHairID', format: DbcFieldFormat.intType),
    FieldDefinition(index: 8, name: 'NPCItemDisplay0', description: 'NPCItemDisplay 0', format: DbcFieldFormat.intType),
    FieldDefinition(index: 9, name: 'NPCItemDisplay1', description: 'NPCItemDisplay 1', format: DbcFieldFormat.intType),
    FieldDefinition(index: 10, name: 'NPCItemDisplay2', description: 'NPCItemDisplay 2', format: DbcFieldFormat.intType),
    FieldDefinition(index: 11, name: 'NPCItemDisplay3', description: 'NPCItemDisplay 3', format: DbcFieldFormat.intType),
    FieldDefinition(index: 12, name: 'NPCItemDisplay4', description: 'NPCItemDisplay 4', format: DbcFieldFormat.intType),
    FieldDefinition(index: 13, name: 'NPCItemDisplay5', description: 'NPCItemDisplay 5', format: DbcFieldFormat.intType),
    FieldDefinition(index: 14, name: 'NPCItemDisplay6', description: 'NPCItemDisplay 6', format: DbcFieldFormat.intType),
    FieldDefinition(index: 15, name: 'NPCItemDisplay7', description: 'NPCItemDisplay 7', format: DbcFieldFormat.intType),
    FieldDefinition(index: 16, name: 'NPCItemDisplay8', description: 'NPCItemDisplay 8', format: DbcFieldFormat.intType),
    FieldDefinition(index: 17, name: 'NPCItemDisplay9', description: 'NPCItemDisplay 9', format: DbcFieldFormat.intType),
    FieldDefinition(index: 18, name: 'NPCItemDisplay10', description: 'NPCItemDisplay 10', format: DbcFieldFormat.intType),
    FieldDefinition(index: 19, name: 'Flags', description: 'Flags', format: DbcFieldFormat.intType),
    FieldDefinition(index: 20, name: 'BakeName', description: 'BakeName', format: DbcFieldFormat.string),
  ],
);
