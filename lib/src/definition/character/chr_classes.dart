import 'package:warcrafty/src/schema/field.dart';
import 'package:warcrafty/src/schema/schema.dart';
import 'package:warcrafty/src/tools/locale_fields.dart';

/// ChrClasses 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
final chrClasses = DbcSchema(
  name: 'ChrClasses',
  format: 'niisssssssssssssssssssssssssssssssssssssssssssssssssssssiiii',
  fields: [
    const Field(index: 0, name: 'ID', description: 'ID', type: FieldType.id),
    const Field(index: 1, name: 'DamageBonusStat', description: 'DamageBonusStat', type: FieldType.int32),
    const Field(index: 2, name: 'DisplayPower', description: 'DisplayPower', type: FieldType.int32),
    const Field(index: 3, name: 'PetNameToken', description: 'PetNameToken', type: FieldType.string),
    ...createLocaleFieldsWithFlag(4, 'Name_lang', 'Name_lang'),
    ...createLocaleFieldsWithFlag(21, 'Name_female_lang', 'Name_female_lang'),
    ...createLocaleFieldsWithFlag(38, 'Name_male_lang', 'Name_male_lang'),
    const Field(index: 55, name: 'Filename', description: 'Filename', type: FieldType.string),
    const Field(index: 56, name: 'SpellClassSet', description: 'SpellClassSet', type: FieldType.int32),
    const Field(index: 57, name: 'Flags', description: 'Flags', type: FieldType.int32),
    const Field(index: 58, name: 'CinematicSequenceID', description: 'CinematicSequenceID', type: FieldType.int32),
    const Field(index: 59, name: 'Required_expansion', description: 'Required_expansion', type: FieldType.int32),
  ],
);
