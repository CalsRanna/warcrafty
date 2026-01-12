import 'package:warcrafty/src/core/field_definition.dart';
import 'package:warcrafty/src/core/structure_definition.dart';
import 'package:warcrafty/src/core/field_format.dart';
import 'package:warcrafty/src/core/locale_fields.dart';

/// BattlemasterList 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
final battlemasterList = DbcStructureDefinition(
  name: 'BattlemasterList',
  format: 'niiiiiiiiiisssssssssssssssssiiii',
  fields: [
    const FieldDefinition(index: 0, name: 'ID', description: 'ID', format: DbcFieldFormat.indexField),
    const FieldDefinition(index: 1, name: 'MapID0', description: 'MapID 0', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 2, name: 'MapID1', description: 'MapID 1', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 3, name: 'MapID2', description: 'MapID 2', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 4, name: 'MapID3', description: 'MapID 3', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 5, name: 'MapID4', description: 'MapID 4', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 6, name: 'MapID5', description: 'MapID 5', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 7, name: 'MapID6', description: 'MapID 6', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 8, name: 'MapID7', description: 'MapID 7', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 9, name: 'InstanceType', description: 'InstanceType', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 10, name: 'GroupsAllowed', description: 'GroupsAllowed', format: DbcFieldFormat.intType),
    ...createLocaleFieldsWithFlag(11, 'Name_lang', 'Name_lang'),
    const FieldDefinition(index: 28, name: 'MaxGroupSize', description: 'MaxGroupSize', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 29, name: 'HolidayWorldState', description: 'HolidayWorldState', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 30, name: 'MinLevel', description: 'MinLevel', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 31, name: 'MaxLevel', description: 'MaxLevel', format: DbcFieldFormat.intType),
  ],
);
