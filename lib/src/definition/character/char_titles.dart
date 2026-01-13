import 'package:warcrafty/src/internal/field.dart';
import 'package:warcrafty/src/internal/schema.dart';
import 'package:warcrafty/src/internal/locale_field.dart';

/// CharTitles 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
final charTitles = DbcSchema(
  name: 'CharTitles',
  format: 'nissssssssssssssssssssssssssssssssssi',
  fields: [
    const Field(index: 0, name: 'ID', description: 'ID', type: FieldType.id),
    const Field(index: 1, name: 'Condition_ID', description: 'Condition_ID', type: FieldType.int32),
    ...createLocaleFieldsWithFlag(2, 'Name_lang', 'Name_lang'),
    ...createLocaleFieldsWithFlag(19, 'Name1_lang', 'Name1_lang'),
    const Field(index: 36, name: 'Mask_ID', description: 'Mask_ID', type: FieldType.int32),
  ],
);
