import 'package:warcrafty/src/definition/base/field_definition.dart';
import 'package:warcrafty/src/definition/base/structure_definition.dart';
import 'package:warcrafty/src/core/field_format.dart';
import 'package:warcrafty/src/definition/common/locale_fields.dart';

/// AreaTable 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
final areaTable = DbcStructureDefinition(
  name: 'AreaTable',
  format: 'niiiiiiiiiisssssssssssssssssiiiiiffi',
  fields: [
    const FieldDefinition(index: 0, name: 'ID', description: 'ID', format: DbcFieldFormat.indexField),
    const FieldDefinition(index: 1, name: 'ContinentID', description: 'ContinentID', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 2, name: 'ParentAreaID', description: 'ParentAreaID', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 3, name: 'AreaBit', description: 'AreaBit', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 4, name: 'Flags', description: 'Flags', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 5, name: 'SoundProviderPref', description: 'SoundProviderPref', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 6, name: 'SoundProviderPrefUnderwater', description: 'SoundProviderPrefUnderwater', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 7, name: 'AmbienceID', description: 'AmbienceID', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 8, name: 'ZoneMusic', description: 'ZoneMusic', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 9, name: 'IntroSound', description: 'IntroSound', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 10, name: 'ExplorationLevel', description: 'ExplorationLevel', format: DbcFieldFormat.intType),
    ...createLocaleFieldsWithFlag(11, 'AreaName_lang', 'AreaName_lang'),
    const FieldDefinition(index: 28, name: 'FactionGroupMask', description: 'FactionGroupMask', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 29, name: 'LiquidTypeID0', description: 'LiquidTypeID 0', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 30, name: 'LiquidTypeID1', description: 'LiquidTypeID 1', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 31, name: 'LiquidTypeID2', description: 'LiquidTypeID 2', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 32, name: 'LiquidTypeID3', description: 'LiquidTypeID 3', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 33, name: 'MinElevation', description: 'MinElevation', format: DbcFieldFormat.float),
    const FieldDefinition(index: 34, name: 'Ambient_multiplier', description: 'Ambient_multiplier', format: DbcFieldFormat.float),
    const FieldDefinition(index: 35, name: 'LightID', description: 'LightID', format: DbcFieldFormat.intType),
  ],
);
