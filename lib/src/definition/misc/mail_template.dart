import 'package:warcrafty/src/core/field_definition.dart';
import 'package:warcrafty/src/core/structure_definition.dart';
import 'package:warcrafty/src/core/field_format.dart';
import 'package:warcrafty/src/core/locale_fields.dart';

/// MailTemplate 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
final mailTemplate = DbcStructureDefinition(
  name: 'MailTemplate',
  format: 'nssssssssssssssssssssssssssssssssss',
  fields: [
    const FieldDefinition(index: 0, name: 'ID', description: 'ID', format: DbcFieldFormat.indexField),
    ...createLocaleFieldsWithFlag(1, 'Subject_lang', 'Subject_lang'),
    ...createLocaleFieldsWithFlag(18, 'Body_lang', 'Body_lang'),
  ],
);
