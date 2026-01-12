import 'package:warcrafty/src/schema/field.dart';
import 'package:warcrafty/src/schema/schema.dart';
import 'package:warcrafty/src/tool/locale_field.dart';

/// SpellFocusObject 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
final spellFocusObject = DbcSchema(
  name: 'SpellFocusObject',
  format: 'nsssssssssssssssss',
  fields: [
    const Field(index: 0, name: 'ID', description: 'ID', type: FieldType.id),
    ...createLocaleFieldsWithFlag(1, 'Name_lang', 'Name_lang'),
  ],
);
