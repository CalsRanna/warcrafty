import 'package:warcrafty/src/definition/base/field_definition.dart';
import 'package:warcrafty/src/definition/base/structure_definition.dart';
import 'package:warcrafty/src/core/field_format.dart';
import 'package:warcrafty/src/definition/common/locale_fields.dart';

/// ChrRaces 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
final chrRaces = DbcStructureDefinition(
  name: 'ChrRaces',
  format: 'niiiiisiiiisiissssssssssssssssssssssssssssssssssssssssssssssssssssssi',
  fields: [
    const FieldDefinition(index: 0, name: 'ID', description: 'ID', format: DbcFieldFormat.indexField),
    const FieldDefinition(index: 1, name: 'Flags', description: 'Flags', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 2, name: 'FactionID', description: 'FactionID', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 3, name: 'ExplorationSoundID', description: 'ExplorationSoundID', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 4, name: 'MaleDisplayID', description: 'MaleDisplayID', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 5, name: 'FemaleDisplayID', description: 'FemaleDisplayID', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 6, name: 'ClientPrefix', description: 'ClientPrefix', format: DbcFieldFormat.string),
    const FieldDefinition(index: 7, name: 'BaseLanguage', description: 'BaseLanguage', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 8, name: 'CreatureType', description: 'CreatureType', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 9, name: 'ResSicknessSpellID', description: 'ResSicknessSpellID', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 10, name: 'SplashSoundID', description: 'SplashSoundID', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 11, name: 'ClientFileString', description: 'ClientFileString', format: DbcFieldFormat.string),
    const FieldDefinition(index: 12, name: 'CinematicSequenceID', description: 'CinematicSequenceID', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 13, name: 'Alliance', description: 'Alliance', format: DbcFieldFormat.intType),
    ...createLocaleFieldsWithFlag(14, 'Name_lang', 'Name_lang'),
    ...createLocaleFieldsWithFlag(31, 'Name_female_lang', 'Name_female_lang'),
    ...createLocaleFieldsWithFlag(48, 'Name_male_lang', 'Name_male_lang'),
    const FieldDefinition(index: 65, name: 'FacialHairCustomization0', description: 'FacialHairCustomization 0', format: DbcFieldFormat.string),
    const FieldDefinition(index: 66, name: 'FacialHairCustomization1', description: 'FacialHairCustomization 1', format: DbcFieldFormat.string),
    const FieldDefinition(index: 67, name: 'HairCustomization', description: 'HairCustomization', format: DbcFieldFormat.string),
    const FieldDefinition(index: 68, name: 'Required_expansion', description: 'Required_expansion', format: DbcFieldFormat.intType),
  ],
);
