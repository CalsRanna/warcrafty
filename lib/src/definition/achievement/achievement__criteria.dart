import 'package:warcrafty/src/internal/field.dart';
import 'package:warcrafty/src/internal/schema.dart';
import 'package:warcrafty/src/internal/locale_field.dart';

/// Achievement_Criteria 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
final achievementCriteria = DbcSchema(
  name: 'Achievement_Criteria',
  format: 'niiiiiiiisssssssssssssssssiiiii',
  fields: [
    const Field(index: 0, name: 'ID', description: 'ID', type: FieldType.id),
    const Field(index: 1, name: 'Achievement_ID', description: 'Achievement_ID', type: FieldType.int32),
    const Field(index: 2, name: 'Type', description: 'Type', type: FieldType.int32),
    const Field(index: 3, name: 'Asset_ID', description: 'Asset_ID', type: FieldType.int32),
    const Field(index: 4, name: 'Quantity', description: 'Quantity', type: FieldType.int32),
    const Field(index: 5, name: 'Start_event', description: 'Start_event', type: FieldType.int32),
    const Field(index: 6, name: 'Start_asset', description: 'Start_asset', type: FieldType.int32),
    const Field(index: 7, name: 'Fail_event', description: 'Fail_event', type: FieldType.int32),
    const Field(index: 8, name: 'Fail_asset', description: 'Fail_asset', type: FieldType.int32),
    ...createLocaleFieldsWithFlag(9, 'Description_lang', 'Description_lang'),
    const Field(index: 26, name: 'Flags', description: 'Flags', type: FieldType.int32),
    const Field(index: 27, name: 'Timer_start_event', description: 'Timer_start_event', type: FieldType.int32),
    const Field(index: 28, name: 'Timer_asset_ID', description: 'Timer_asset_ID', type: FieldType.int32),
    const Field(index: 29, name: 'Timer_time', description: 'Timer_time', type: FieldType.int32),
    const Field(index: 30, name: 'Ui_order', description: 'Ui_order', type: FieldType.int32),
  ],
);
