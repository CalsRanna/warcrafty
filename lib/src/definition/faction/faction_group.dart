import 'package:warcrafty/src/schema/field.dart';
import 'package:warcrafty/src/schema/schema.dart';
import 'package:warcrafty/src/tools/locale_fields.dart';

/// FactionGroup 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
final factionGroup = DbcSchema(
  name: 'FactionGroup',
  format: 'nissssssssssssssssss',
  fields: [
    const Field(index: 0, name: 'ID', description: 'ID', type: FieldType.id),
    const Field(index: 1, name: 'MaskID', description: 'MaskID', type: FieldType.int32),
    const Field(index: 2, name: 'InternalName', description: 'InternalName', type: FieldType.string),
    ...createLocaleFieldsWithFlag(3, 'Name_lang', 'Name_lang'),
  ],
);
