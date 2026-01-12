import 'package:warcrafty/src/core/field_definition.dart';
import 'package:warcrafty/src/core/structure_definition.dart';
import 'package:warcrafty/src/core/field_format.dart';
import 'package:warcrafty/src/core/locale_fields.dart';

/// Achievement_Criteria 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
final achievementCriteria = DbcStructureDefinition(
  name: 'Achievement_Criteria',
  format: 'niiiiiiiisssssssssssssssssiiiii',
  fields: [
    const FieldDefinition(index: 0, name: 'ID', description: 'ID', format: DbcFieldFormat.indexField),
    const FieldDefinition(index: 1, name: 'Achievement_ID', description: 'Achievement_ID', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 2, name: 'Type', description: 'Type', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 3, name: 'Asset_ID', description: 'Asset_ID', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 4, name: 'Quantity', description: 'Quantity', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 5, name: 'Start_event', description: 'Start_event', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 6, name: 'Start_asset', description: 'Start_asset', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 7, name: 'Fail_event', description: 'Fail_event', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 8, name: 'Fail_asset', description: 'Fail_asset', format: DbcFieldFormat.intType),
    ...createLocaleFieldsWithFlag(9, 'Description_lang', 'Description_lang'),
    const FieldDefinition(index: 26, name: 'Flags', description: 'Flags', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 27, name: 'Timer_start_event', description: 'Timer_start_event', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 28, name: 'Timer_asset_ID', description: 'Timer_asset_ID', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 29, name: 'Timer_time', description: 'Timer_time', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 30, name: 'Ui_order', description: 'Ui_order', format: DbcFieldFormat.intType),
  ],
);
