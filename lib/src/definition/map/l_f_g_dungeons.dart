import 'package:warcrafty/src/schema/field.dart';
import 'package:warcrafty/src/schema/schema.dart';
import 'package:warcrafty/src/tools/locale_fields.dart';

/// LFGDungeons 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
final lFGDungeons = DbcSchema(
  name: 'LFGDungeons',
  format: 'nsssssssssssssssssiiiiiiiiiisiiisssssssssssssssss',
  fields: [
    const Field(index: 0, name: 'ID', description: 'ID', type: FieldType.id),
    ...createLocaleFieldsWithFlag(1, 'Name_lang', 'Name_lang'),
    const Field(index: 18, name: 'MinLevel', description: 'MinLevel', type: FieldType.int32),
    const Field(index: 19, name: 'MaxLevel', description: 'MaxLevel', type: FieldType.int32),
    const Field(index: 20, name: 'Target_level', description: 'Target_level', type: FieldType.int32),
    const Field(index: 21, name: 'Target_level_min', description: 'Target_level_min', type: FieldType.int32),
    const Field(index: 22, name: 'Target_level_max', description: 'Target_level_max', type: FieldType.int32),
    const Field(index: 23, name: 'MapID', description: 'MapID', type: FieldType.int32),
    const Field(index: 24, name: 'Difficulty', description: 'Difficulty', type: FieldType.int32),
    const Field(index: 25, name: 'Flags', description: 'Flags', type: FieldType.int32),
    const Field(index: 26, name: 'TypeID', description: 'TypeID', type: FieldType.int32),
    const Field(index: 27, name: 'Faction', description: 'Faction', type: FieldType.int32),
    const Field(index: 28, name: 'TextureFilename', description: 'TextureFilename', type: FieldType.string),
    const Field(index: 29, name: 'ExpansionLevel', description: 'ExpansionLevel', type: FieldType.int32),
    const Field(index: 30, name: 'Order_index', description: 'Order_index', type: FieldType.int32),
    const Field(index: 31, name: 'Group_ID', description: 'Group_ID', type: FieldType.int32),
    ...createLocaleFieldsWithFlag(32, 'Description_lang', 'Description_lang'),
  ],
);
