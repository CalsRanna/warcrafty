import 'package:warcrafty/src/schema/field.dart';
import 'package:warcrafty/src/schema/schema.dart';
import 'package:warcrafty/src/tools/locale_fields.dart';

/// Package 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
final package = DbcSchema(
  name: 'Package',
  format: 'nsisssssssssssssssss',
  fields: [
    const Field(index: 0, name: 'ID', description: 'ID', type: FieldType.id),
    const Field(index: 1, name: 'Icon', description: 'Icon', type: FieldType.string),
    const Field(index: 2, name: 'Cost', description: 'Cost', type: FieldType.int32),
    ...createLocaleFieldsWithFlag(3, 'Name_lang', 'Name_lang'),
  ],
);
