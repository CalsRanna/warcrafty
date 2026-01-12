import 'package:warcrafty/src/schema/field.dart';
import 'package:warcrafty/src/schema/schema.dart';
import 'package:warcrafty/src/tools/locale_fields.dart';

/// Achievement 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
final achievement = DbcSchema(
  name: 'Achievement',
  format: 'niiissssssssssssssssssssssssssssssssssiiiiisssssssssssssssssii',
  fields: [
    const Field(index: 0, name: 'ID', description: 'ID', type: FieldType.id),
    const Field(index: 1, name: 'Faction', description: 'Faction', type: FieldType.int32),
    const Field(index: 2, name: 'Instance_ID', description: 'Instance_ID', type: FieldType.int32),
    const Field(index: 3, name: 'Supercedes', description: 'Supercedes', type: FieldType.int32),
    ...createLocaleFieldsWithFlag(4, 'Title_lang', 'Title_lang'),
    ...createLocaleFieldsWithFlag(21, 'Description_lang', 'Description_lang'),
    const Field(index: 38, name: 'Category', description: 'Category', type: FieldType.int32),
    const Field(index: 39, name: 'Points', description: 'Points', type: FieldType.int32),
    const Field(index: 40, name: 'Ui_order', description: 'Ui_order', type: FieldType.int32),
    const Field(index: 41, name: 'Flags', description: 'Flags', type: FieldType.int32),
    const Field(index: 42, name: 'IconID', description: 'IconID', type: FieldType.int32),
    ...createLocaleFieldsWithFlag(43, 'Reward_lang', 'Reward_lang'),
    const Field(index: 60, name: 'Minimum_criteria', description: 'Minimum_criteria', type: FieldType.int32),
    const Field(index: 61, name: 'Shares_criteria', description: 'Shares_criteria', type: FieldType.int32),
  ],
);
