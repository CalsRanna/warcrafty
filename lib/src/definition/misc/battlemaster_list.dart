import 'package:warcrafty/src/schema/field.dart';
import 'package:warcrafty/src/schema/schema.dart';
import 'package:warcrafty/src/tools/locale_fields.dart';

/// BattlemasterList 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
final battlemasterList = DbcSchema(
  name: 'BattlemasterList',
  format: 'niiiiiiiiiisssssssssssssssssiiii',
  fields: [
    const Field(index: 0, name: 'ID', description: 'ID', type: FieldType.id),
    const Field(index: 1, name: 'MapID0', description: 'MapID 0', type: FieldType.int32),
    const Field(index: 2, name: 'MapID1', description: 'MapID 1', type: FieldType.int32),
    const Field(index: 3, name: 'MapID2', description: 'MapID 2', type: FieldType.int32),
    const Field(index: 4, name: 'MapID3', description: 'MapID 3', type: FieldType.int32),
    const Field(index: 5, name: 'MapID4', description: 'MapID 4', type: FieldType.int32),
    const Field(index: 6, name: 'MapID5', description: 'MapID 5', type: FieldType.int32),
    const Field(index: 7, name: 'MapID6', description: 'MapID 6', type: FieldType.int32),
    const Field(index: 8, name: 'MapID7', description: 'MapID 7', type: FieldType.int32),
    const Field(index: 9, name: 'InstanceType', description: 'InstanceType', type: FieldType.int32),
    const Field(index: 10, name: 'GroupsAllowed', description: 'GroupsAllowed', type: FieldType.int32),
    ...createLocaleFieldsWithFlag(11, 'Name_lang', 'Name_lang'),
    const Field(index: 28, name: 'MaxGroupSize', description: 'MaxGroupSize', type: FieldType.int32),
    const Field(index: 29, name: 'HolidayWorldState', description: 'HolidayWorldState', type: FieldType.int32),
    const Field(index: 30, name: 'MinLevel', description: 'MinLevel', type: FieldType.int32),
    const Field(index: 31, name: 'MaxLevel', description: 'MaxLevel', type: FieldType.int32),
  ],
);
