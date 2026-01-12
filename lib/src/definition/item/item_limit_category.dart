import 'package:warcrafty/src/schema/field.dart';
import 'package:warcrafty/src/schema/schema.dart';
import 'package:warcrafty/src/tools/locale_fields.dart';

/// ItemLimitCategory 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
final itemLimitCategory = DbcSchema(
  name: 'ItemLimitCategory',
  format: 'nsssssssssssssssssii',
  fields: [
    const Field(index: 0, name: 'ID', description: 'ID', type: FieldType.id),
    ...createLocaleFieldsWithFlag(1, 'Name_lang', 'Name_lang'),
    const Field(index: 18, name: 'Quantity', description: 'Quantity', type: FieldType.int32),
    const Field(index: 19, name: 'Flags', description: 'Flags', type: FieldType.int32),
  ],
);
