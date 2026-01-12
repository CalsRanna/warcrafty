import 'package:warcrafty/src/schema/field.dart';
import 'package:warcrafty/src/schema/schema.dart';
import 'package:warcrafty/src/tool/locale_field.dart';

/// SkillLine 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
final skillLine = DbcSchema(
  name: 'SkillLine',
  format: 'niissssssssssssssssssssssssssssssssssisssssssssssssssssi',
  fields: [
    const Field(index: 0, name: 'ID', description: 'ID', type: FieldType.id),
    const Field(
      index: 1,
      name: 'CategoryID',
      description: 'CategoryID',
      type: FieldType.int32,
    ),
    const Field(
      index: 2,
      name: 'SkillCostsID',
      description: 'SkillCostsID',
      type: FieldType.int32,
    ),
    ...createLocaleFieldsWithFlag(3, 'DisplayName_lang', 'DisplayName_lang'),
    ...createLocaleFieldsWithFlag(20, 'Description_lang', 'Description_lang'),
    const Field(
      index: 37,
      name: 'SpellIconID',
      description: 'SpellIconID',
      type: FieldType.int32,
    ),
    ...createLocaleFieldsWithFlag(
      38,
      'AlternateVerb_lang',
      'AlternateVerb_lang',
    ),
    const Field(
      index: 55,
      name: 'CanLink',
      description: 'CanLink',
      type: FieldType.int32,
    ),
  ],
);
