import 'package:warcrafty/src/internal/field.dart';
import 'package:warcrafty/src/internal/schema.dart';
import 'package:warcrafty/src/internal/locale_field.dart';

/// AreaTable 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
final areaTable = DbcSchema(
  name: 'AreaTable',
  format: 'niiiiiiiiiisssssssssssssssssiiiiiffi',
  fields: [
    const Field(index: 0, name: 'ID', description: 'ID', type: FieldType.id),
    const Field(index: 1, name: 'ContinentID', description: 'ContinentID', type: FieldType.int32),
    const Field(index: 2, name: 'ParentAreaID', description: 'ParentAreaID', type: FieldType.int32),
    const Field(index: 3, name: 'AreaBit', description: 'AreaBit', type: FieldType.int32),
    const Field(index: 4, name: 'Flags', description: 'Flags', type: FieldType.int32),
    const Field(index: 5, name: 'SoundProviderPref', description: 'SoundProviderPref', type: FieldType.int32),
    const Field(index: 6, name: 'SoundProviderPrefUnderwater', description: 'SoundProviderPrefUnderwater', type: FieldType.int32),
    const Field(index: 7, name: 'AmbienceID', description: 'AmbienceID', type: FieldType.int32),
    const Field(index: 8, name: 'ZoneMusic', description: 'ZoneMusic', type: FieldType.int32),
    const Field(index: 9, name: 'IntroSound', description: 'IntroSound', type: FieldType.int32),
    const Field(index: 10, name: 'ExplorationLevel', description: 'ExplorationLevel', type: FieldType.int32),
    ...createLocaleFieldsWithFlag(11, 'AreaName_lang', 'AreaName_lang'),
    const Field(index: 28, name: 'FactionGroupMask', description: 'FactionGroupMask', type: FieldType.int32),
    const Field(index: 29, name: 'LiquidTypeID0', description: 'LiquidTypeID 0', type: FieldType.int32),
    const Field(index: 30, name: 'LiquidTypeID1', description: 'LiquidTypeID 1', type: FieldType.int32),
    const Field(index: 31, name: 'LiquidTypeID2', description: 'LiquidTypeID 2', type: FieldType.int32),
    const Field(index: 32, name: 'LiquidTypeID3', description: 'LiquidTypeID 3', type: FieldType.int32),
    const Field(index: 33, name: 'MinElevation', description: 'MinElevation', type: FieldType.float),
    const Field(index: 34, name: 'Ambient_multiplier', description: 'Ambient_multiplier', type: FieldType.float),
    const Field(index: 35, name: 'LightID', description: 'LightID', type: FieldType.int32),
  ],
);
