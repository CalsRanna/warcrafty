import 'package:warcrafty/src/definition/base/field_definition.dart';
import 'package:warcrafty/src/definition/base/structure_definition.dart';
import 'package:warcrafty/src/core/field_format.dart';
import 'package:warcrafty/src/definition/common/locale_fields.dart';

/// WMOAreaTable 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
final wMOAreaTable = DbcStructureDefinition(
  name: 'WMOAreaTable',
  format: 'niiiiiiiiiisssssssssssssssss',
  fields: [
    const FieldDefinition(index: 0, name: 'ID', description: 'ID', format: DbcFieldFormat.indexField),
    const FieldDefinition(index: 1, name: 'WMOID', description: 'WMOID', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 2, name: 'NameSetID', description: 'NameSetID', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 3, name: 'WMOGroupID', description: 'WMOGroupID', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 4, name: 'SoundProviderPref', description: 'SoundProviderPref', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 5, name: 'SoundProviderPrefUnderwater', description: 'SoundProviderPrefUnderwater', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 6, name: 'AmbienceID', description: 'AmbienceID', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 7, name: 'ZoneMusic', description: 'ZoneMusic', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 8, name: 'IntroSound', description: 'IntroSound', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 9, name: 'Flags', description: 'Flags', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 10, name: 'AreaTableID', description: 'AreaTableID', format: DbcFieldFormat.intType),
    ...createLocaleFieldsWithFlag(11, 'AreaName_lang', 'AreaName_lang'),
  ],
);
