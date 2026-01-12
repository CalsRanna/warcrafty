import 'package:warcrafty/src/schema/field.dart';
import 'package:warcrafty/src/schema/schema.dart';
import 'package:warcrafty/src/tool/locale_field.dart';

/// Cfg_Categories 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
final cfgCategories = DbcSchema(
  name: 'Cfg_Categories',
  format: 'niiisssssssssssssssss',
  fields: [
    const Field(index: 0, name: 'ID', description: 'ID', type: FieldType.id),
    const Field(
      index: 1,
      name: 'LocaleMask',
      description: 'LocaleMask',
      type: FieldType.int32,
    ),
    const Field(
      index: 2,
      name: 'Create_charsetMask',
      description: 'Create_charsetMask',
      type: FieldType.int32,
    ),
    const Field(
      index: 3,
      name: 'Flags',
      description: 'Flags',
      type: FieldType.int32,
    ),
    ...createLocaleFieldsWithFlag(4, 'Name_lang', 'Name_lang'),
  ],
);
