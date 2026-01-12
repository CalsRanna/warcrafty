import 'package:warcrafty/src/schema/field.dart';
import 'package:warcrafty/src/schema/schema.dart';
import 'package:warcrafty/src/tools/locale_fields.dart';

/// LockType 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
final lockType = DbcSchema(
  name: 'LockType',
  format: 'nssssssssssssssssssssssssssssssssssssssssssssssssssss',
  fields: [
    const Field(index: 0, name: 'ID', description: 'ID', type: FieldType.id),
    ...createLocaleFieldsWithFlag(1, 'Name_lang', 'Name_lang'),
    ...createLocaleFieldsWithFlag(18, 'ResourceName_lang', 'ResourceName_lang'),
    ...createLocaleFieldsWithFlag(35, 'Verb_lang', 'Verb_lang'),
    const Field(index: 52, name: 'CursorName', description: 'CursorName', type: FieldType.string),
  ],
);
