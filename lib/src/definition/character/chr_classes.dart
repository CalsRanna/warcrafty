import 'package:warcrafty/src/definition/base/field_definition.dart';
import 'package:warcrafty/src/definition/base/structure_definition.dart';
import 'package:warcrafty/src/core/field_format.dart';
import 'package:warcrafty/src/definition/common/locale_fields.dart';

/// ChrClasses 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
final chrClasses = DbcStructureDefinition(
  name: 'ChrClasses',
  format: 'niisssssssssssssssssssssssssssssssssssssssssssssssssssssiiii',
  fields: [
    const FieldDefinition(index: 0, name: 'ID', description: 'ID', format: DbcFieldFormat.indexField),
    const FieldDefinition(index: 1, name: 'DamageBonusStat', description: 'DamageBonusStat', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 2, name: 'DisplayPower', description: 'DisplayPower', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 3, name: 'PetNameToken', description: 'PetNameToken', format: DbcFieldFormat.string),
    ...createLocaleFieldsWithFlag(4, 'Name_lang', 'Name_lang'),
    ...createLocaleFieldsWithFlag(21, 'Name_female_lang', 'Name_female_lang'),
    ...createLocaleFieldsWithFlag(38, 'Name_male_lang', 'Name_male_lang'),
    const FieldDefinition(index: 55, name: 'Filename', description: 'Filename', format: DbcFieldFormat.string),
    const FieldDefinition(index: 56, name: 'SpellClassSet', description: 'SpellClassSet', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 57, name: 'Flags', description: 'Flags', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 58, name: 'CinematicSequenceID', description: 'CinematicSequenceID', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 59, name: 'Required_expansion', description: 'Required_expansion', format: DbcFieldFormat.intType),
  ],
);
