import 'package:warcrafty/src/schema/field.dart';
import 'package:warcrafty/src/schema/schema.dart';
import 'package:warcrafty/src/tools/locale_fields.dart';

/// ItemRandomProperties 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
final itemRandomProperties = DbcSchema(
  name: 'ItemRandomProperties',
  format: 'nsiiiiisssssssssssssssss',
  fields: [
    const Field(index: 0, name: 'ID', description: 'ID', type: FieldType.id),
    const Field(index: 1, name: 'Name', description: 'Name', type: FieldType.string),
    const Field(index: 2, name: 'Enchantment0', description: 'Enchantment 0', type: FieldType.int32),
    const Field(index: 3, name: 'Enchantment1', description: 'Enchantment 1', type: FieldType.int32),
    const Field(index: 4, name: 'Enchantment2', description: 'Enchantment 2', type: FieldType.int32),
    const Field(index: 5, name: 'Enchantment3', description: 'Enchantment 3', type: FieldType.int32),
    const Field(index: 6, name: 'Enchantment4', description: 'Enchantment 4', type: FieldType.int32),
    ...createLocaleFieldsWithFlag(7, 'Name_lang', 'Name_lang'),
  ],
);
