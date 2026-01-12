import 'package:warcrafty/src/schema/field.dart';
import 'package:warcrafty/src/schema/schema.dart';

/// CreatureDisplayInfoExtra 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
const creatureDisplayInfoExtra = DbcSchema(
  name: 'CreatureDisplayInfoExtra',
  format: 'niiiiiiiiiiiiiiiiiiis',
  fields: [
    Field(index: 0, name: 'ID', description: 'ID', type: FieldType.id),
    Field(index: 1, name: 'DisplayRaceID', description: 'DisplayRaceID', type: FieldType.int32),
    Field(index: 2, name: 'DisplaySexID', description: 'DisplaySexID', type: FieldType.int32),
    Field(index: 3, name: 'SkinID', description: 'SkinID', type: FieldType.int32),
    Field(index: 4, name: 'FaceID', description: 'FaceID', type: FieldType.int32),
    Field(index: 5, name: 'HairStyleID', description: 'HairStyleID', type: FieldType.int32),
    Field(index: 6, name: 'HairColorID', description: 'HairColorID', type: FieldType.int32),
    Field(index: 7, name: 'FacialHairID', description: 'FacialHairID', type: FieldType.int32),
    Field(index: 8, name: 'NPCItemDisplay0', description: 'NPCItemDisplay 0', type: FieldType.int32),
    Field(index: 9, name: 'NPCItemDisplay1', description: 'NPCItemDisplay 1', type: FieldType.int32),
    Field(index: 10, name: 'NPCItemDisplay2', description: 'NPCItemDisplay 2', type: FieldType.int32),
    Field(index: 11, name: 'NPCItemDisplay3', description: 'NPCItemDisplay 3', type: FieldType.int32),
    Field(index: 12, name: 'NPCItemDisplay4', description: 'NPCItemDisplay 4', type: FieldType.int32),
    Field(index: 13, name: 'NPCItemDisplay5', description: 'NPCItemDisplay 5', type: FieldType.int32),
    Field(index: 14, name: 'NPCItemDisplay6', description: 'NPCItemDisplay 6', type: FieldType.int32),
    Field(index: 15, name: 'NPCItemDisplay7', description: 'NPCItemDisplay 7', type: FieldType.int32),
    Field(index: 16, name: 'NPCItemDisplay8', description: 'NPCItemDisplay 8', type: FieldType.int32),
    Field(index: 17, name: 'NPCItemDisplay9', description: 'NPCItemDisplay 9', type: FieldType.int32),
    Field(index: 18, name: 'NPCItemDisplay10', description: 'NPCItemDisplay 10', type: FieldType.int32),
    Field(index: 19, name: 'Flags', description: 'Flags', type: FieldType.int32),
    Field(index: 20, name: 'BakeName', description: 'BakeName', type: FieldType.string),
  ],
);
