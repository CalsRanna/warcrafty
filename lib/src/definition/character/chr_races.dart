import 'package:warcrafty/src/schema/field.dart';
import 'package:warcrafty/src/schema/schema.dart';
import 'package:warcrafty/src/tools/locale_fields.dart';

/// ChrRaces 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
final chrRaces = DbcSchema(
  name: 'ChrRaces',
  format: 'niiiiisiiiisiissssssssssssssssssssssssssssssssssssssssssssssssssssssi',
  fields: [
    const Field(index: 0, name: 'ID', description: 'ID', type: FieldType.id),
    const Field(index: 1, name: 'Flags', description: 'Flags', type: FieldType.int32),
    const Field(index: 2, name: 'FactionID', description: 'FactionID', type: FieldType.int32),
    const Field(index: 3, name: 'ExplorationSoundID', description: 'ExplorationSoundID', type: FieldType.int32),
    const Field(index: 4, name: 'MaleDisplayID', description: 'MaleDisplayID', type: FieldType.int32),
    const Field(index: 5, name: 'FemaleDisplayID', description: 'FemaleDisplayID', type: FieldType.int32),
    const Field(index: 6, name: 'ClientPrefix', description: 'ClientPrefix', type: FieldType.string),
    const Field(index: 7, name: 'BaseLanguage', description: 'BaseLanguage', type: FieldType.int32),
    const Field(index: 8, name: 'CreatureType', description: 'CreatureType', type: FieldType.int32),
    const Field(index: 9, name: 'ResSicknessSpellID', description: 'ResSicknessSpellID', type: FieldType.int32),
    const Field(index: 10, name: 'SplashSoundID', description: 'SplashSoundID', type: FieldType.int32),
    const Field(index: 11, name: 'ClientFileString', description: 'ClientFileString', type: FieldType.string),
    const Field(index: 12, name: 'CinematicSequenceID', description: 'CinematicSequenceID', type: FieldType.int32),
    const Field(index: 13, name: 'Alliance', description: 'Alliance', type: FieldType.int32),
    ...createLocaleFieldsWithFlag(14, 'Name_lang', 'Name_lang'),
    ...createLocaleFieldsWithFlag(31, 'Name_female_lang', 'Name_female_lang'),
    ...createLocaleFieldsWithFlag(48, 'Name_male_lang', 'Name_male_lang'),
    const Field(index: 65, name: 'FacialHairCustomization0', description: 'FacialHairCustomization 0', type: FieldType.string),
    const Field(index: 66, name: 'FacialHairCustomization1', description: 'FacialHairCustomization 1', type: FieldType.string),
    const Field(index: 67, name: 'HairCustomization', description: 'HairCustomization', type: FieldType.string),
    const Field(index: 68, name: 'Required_expansion', description: 'Required_expansion', type: FieldType.int32),
  ],
);
