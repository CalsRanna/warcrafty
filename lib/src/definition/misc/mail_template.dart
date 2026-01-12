import 'package:warcrafty/src/schema/field.dart';
import 'package:warcrafty/src/schema/schema.dart';
import 'package:warcrafty/src/tool/locale_field.dart';

/// MailTemplate 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
final mailTemplate = DbcSchema(
  name: 'MailTemplate',
  format: 'nssssssssssssssssssssssssssssssssss',
  fields: [
    const Field(index: 0, name: 'ID', description: 'ID', type: FieldType.id),
    ...createLocaleFieldsWithFlag(1, 'Subject_lang', 'Subject_lang'),
    ...createLocaleFieldsWithFlag(18, 'Body_lang', 'Body_lang'),
  ],
);
