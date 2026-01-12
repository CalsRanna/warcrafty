import 'package:warcrafty/src/core/field_definition.dart';
import 'package:warcrafty/src/core/structure_definition.dart';
import 'package:warcrafty/src/core/field_format.dart';
import 'package:warcrafty/src/core/locale_fields.dart';

/// SkillLine 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
final skillLine = DbcStructureDefinition(
  name: 'SkillLine',
  format: 'niissssssssssssssssssssssssssssssssssisssssssssssssssssi',
  fields: [
    const FieldDefinition(index: 0, name: 'ID', description: 'ID', format: DbcFieldFormat.indexField),
    const FieldDefinition(index: 1, name: 'CategoryID', description: 'CategoryID', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 2, name: 'SkillCostsID', description: 'SkillCostsID', format: DbcFieldFormat.intType),
    ...createLocaleFieldsWithFlag(3, 'DisplayName_lang', 'DisplayName_lang'),
    ...createLocaleFieldsWithFlag(20, 'Description_lang', 'Description_lang'),
    const FieldDefinition(index: 37, name: 'SpellIconID', description: 'SpellIconID', format: DbcFieldFormat.intType),
    ...createLocaleFieldsWithFlag(38, 'AlternateVerb_lang', 'AlternateVerb_lang'),
    const FieldDefinition(index: 55, name: 'CanLink', description: 'CanLink', format: DbcFieldFormat.intType),
  ],
);
