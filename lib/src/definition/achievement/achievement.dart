import 'package:warcrafty/src/core/field_definition.dart';
import 'package:warcrafty/src/core/structure_definition.dart';
import 'package:warcrafty/src/core/field_format.dart';
import 'package:warcrafty/src/core/locale_fields.dart';

/// Achievement 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
final achievement = DbcStructureDefinition(
  name: 'Achievement',
  format: 'niiissssssssssssssssssssssssssssssssssiiiiisssssssssssssssssii',
  fields: [
    const FieldDefinition(index: 0, name: 'ID', description: 'ID', format: DbcFieldFormat.indexField),
    const FieldDefinition(index: 1, name: 'Faction', description: 'Faction', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 2, name: 'Instance_ID', description: 'Instance_ID', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 3, name: 'Supercedes', description: 'Supercedes', format: DbcFieldFormat.intType),
    ...createLocaleFieldsWithFlag(4, 'Title_lang', 'Title_lang'),
    ...createLocaleFieldsWithFlag(21, 'Description_lang', 'Description_lang'),
    const FieldDefinition(index: 38, name: 'Category', description: 'Category', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 39, name: 'Points', description: 'Points', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 40, name: 'Ui_order', description: 'Ui_order', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 41, name: 'Flags', description: 'Flags', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 42, name: 'IconID', description: 'IconID', format: DbcFieldFormat.intType),
    ...createLocaleFieldsWithFlag(43, 'Reward_lang', 'Reward_lang'),
    const FieldDefinition(index: 60, name: 'Minimum_criteria', description: 'Minimum_criteria', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 61, name: 'Shares_criteria', description: 'Shares_criteria', format: DbcFieldFormat.intType),
  ],
);
