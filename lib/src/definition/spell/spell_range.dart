import 'package:warcrafty/src/schema/field.dart';
import 'package:warcrafty/src/schema/schema.dart';
import 'package:warcrafty/src/tools/locale_fields.dart';

/// SpellRange 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
final spellRange = DbcSchema(
  name: 'SpellRange',
  format: 'nffffissssssssssssssssssssssssssssssssss',
  fields: [
    const Field(index: 0, name: 'ID', description: 'ID', type: FieldType.id),
    const Field(index: 1, name: 'RangeMin0', description: 'RangeMin 0', type: FieldType.float),
    const Field(index: 2, name: 'RangeMin1', description: 'RangeMin 1', type: FieldType.float),
    const Field(index: 3, name: 'RangeMax0', description: 'RangeMax 0', type: FieldType.float),
    const Field(index: 4, name: 'RangeMax1', description: 'RangeMax 1', type: FieldType.float),
    const Field(index: 5, name: 'Flags', description: 'Flags', type: FieldType.int32),
    ...createLocaleFieldsWithFlag(6, 'DisplayName_lang', 'DisplayName_lang'),
    ...createLocaleFieldsWithFlag(23, 'DisplayNameShort_lang', 'DisplayNameShort_lang'),
  ],
);
