import 'package:warcrafty/src/schema/field.dart';
import 'package:warcrafty/src/schema/schema.dart';
import 'package:warcrafty/src/tool/locale_field.dart';

/// CurrencyCategory 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
final currencyCategory = DbcSchema(
  name: 'CurrencyCategory',
  format: 'nisssssssssssssssss',
  fields: [
    const Field(index: 0, name: 'ID', description: 'ID', type: FieldType.id),
    const Field(
      index: 1,
      name: 'Flags',
      description: 'Flags',
      type: FieldType.int32,
    ),
    ...createLocaleFieldsWithFlag(2, 'Name_lang', 'Name_lang'),
  ],
);
