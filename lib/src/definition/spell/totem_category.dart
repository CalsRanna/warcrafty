import 'package:warcrafty/src/schema/field.dart';
import 'package:warcrafty/src/schema/schema.dart';
import 'package:warcrafty/src/tool/locale_field.dart';

/// TotemCategory 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
final totemCategory = DbcSchema(
  name: 'TotemCategory',
  format: 'nsssssssssssssssssii',
  fields: [
    const Field(index: 0, name: 'ID', description: 'ID', type: FieldType.id),
    ...createLocaleFieldsWithFlag(1, 'Name_lang', 'Name_lang'),
    const Field(
      index: 18,
      name: 'TotemCategoryType',
      description: 'TotemCategoryType',
      type: FieldType.int32,
    ),
    const Field(
      index: 19,
      name: 'TotemCategoryMask',
      description: 'TotemCategoryMask',
      type: FieldType.int32,
    ),
  ],
);
