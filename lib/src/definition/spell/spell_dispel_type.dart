import 'package:warcrafty/src/core/field_definition.dart';
import 'package:warcrafty/src/core/structure_definition.dart';
import 'package:warcrafty/src/core/field_format.dart';
import 'package:warcrafty/src/core/locale_fields.dart';

/// SpellDispelType 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
final spellDispelType = DbcStructureDefinition(
  name: 'SpellDispelType',
  format: 'nsssssssssssssssssiis',
  fields: [
    const FieldDefinition(index: 0, name: 'ID', description: 'ID', format: DbcFieldFormat.indexField),
    ...createLocaleFieldsWithFlag(1, 'Name_lang', 'Name_lang'),
    const FieldDefinition(index: 18, name: 'Mask', description: 'Mask', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 19, name: 'ImmunityPossible', description: 'ImmunityPossible', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 20, name: 'InternalName', description: 'InternalName', format: DbcFieldFormat.string),
  ],
);
