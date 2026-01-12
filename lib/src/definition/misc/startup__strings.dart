import 'package:warcrafty/src/schema/field.dart';
import 'package:warcrafty/src/schema/schema.dart';
import 'package:warcrafty/src/tool/locale_field.dart';

/// Startup_Strings 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
final startupStrings = DbcSchema(
  name: 'Startup_Strings',
  format: 'nssssssssssssssssss',
  fields: [
    const Field(index: 0, name: 'ID', description: 'ID', type: FieldType.id),
    const Field(
      index: 1,
      name: 'Name',
      description: 'Name',
      type: FieldType.string,
    ),
    ...createLocaleFieldsWithFlag(2, 'Message_lang', 'Message_lang'),
  ],
);
