import 'package:warcrafty/src/schema/field.dart';
import 'package:warcrafty/src/schema/schema.dart';
import 'package:warcrafty/src/tools/locale_fields.dart';

/// ChatChannels 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
final chatChannels = DbcSchema(
  name: 'ChatChannels',
  format: 'niissssssssssssssssssssssssssssssssss',
  fields: [
    const Field(index: 0, name: 'ID', description: 'ID', type: FieldType.id),
    const Field(index: 1, name: 'Flags', description: 'Flags', type: FieldType.int32),
    const Field(index: 2, name: 'FactionGroup', description: 'FactionGroup', type: FieldType.int32),
    ...createLocaleFieldsWithFlag(3, 'Name_lang', 'Name_lang'),
    ...createLocaleFieldsWithFlag(20, 'Shortcut_lang', 'Shortcut_lang'),
  ],
);
