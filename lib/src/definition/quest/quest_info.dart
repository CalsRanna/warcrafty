import 'package:warcrafty/src/schema/field.dart';
import 'package:warcrafty/src/schema/schema.dart';
import 'package:warcrafty/src/tools/locale_fields.dart';

/// QuestInfo 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
final questInfo = DbcSchema(
  name: 'QuestInfo',
  format: 'nsssssssssssssssss',
  fields: [
    const Field(index: 0, name: 'ID', description: 'ID', type: FieldType.id),
    ...createLocaleFieldsWithFlag(1, 'InfoName_lang', 'InfoName_lang'),
  ],
);
