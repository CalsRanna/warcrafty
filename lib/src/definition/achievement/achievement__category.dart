import 'package:warcrafty/src/internal/field.dart';
import 'package:warcrafty/src/internal/schema.dart';
import 'package:warcrafty/src/internal/locale_field.dart';

/// Achievement_Category 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
final achievementCategory = DbcSchema(
  name: 'Achievement_Category',
  format: 'nisssssssssssssssssi',
  fields: [
    const Field(index: 0, name: 'ID', description: 'ID', type: FieldType.id),
    const Field(index: 1, name: 'Parent', description: 'Parent', type: FieldType.int32),
    ...createLocaleFieldsWithFlag(2, 'Name_lang', 'Name_lang'),
    const Field(index: 19, name: 'Ui_order', description: 'Ui_order', type: FieldType.int32),
  ],
);
