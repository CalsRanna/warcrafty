import 'package:warcrafty/src/schema/field.dart';
import 'package:warcrafty/src/schema/schema.dart';
import 'package:warcrafty/src/tools/locale_fields.dart';

/// TalentTab 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
final talentTab = DbcSchema(
  name: 'TalentTab',
  format: 'nsssssssssssssssssiiiiis',
  fields: [
    const Field(index: 0, name: 'ID', description: 'ID', type: FieldType.id),
    ...createLocaleFieldsWithFlag(1, 'Name_lang', 'Name_lang'),
    const Field(index: 18, name: 'SpellIconID', description: 'SpellIconID', type: FieldType.int32),
    const Field(index: 19, name: 'RaceMask', description: 'RaceMask', type: FieldType.int32),
    const Field(index: 20, name: 'ClassMask', description: 'ClassMask', type: FieldType.int32),
    const Field(index: 21, name: 'CategoryEnumID', description: 'CategoryEnumID', type: FieldType.int32),
    const Field(index: 22, name: 'OrderIndex', description: 'OrderIndex', type: FieldType.int32),
    const Field(index: 23, name: 'BackgroundFile', description: 'BackgroundFile', type: FieldType.string),
  ],
);
