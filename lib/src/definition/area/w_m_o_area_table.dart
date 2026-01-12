import 'package:warcrafty/src/schema/field.dart';
import 'package:warcrafty/src/schema/schema.dart';
import 'package:warcrafty/src/tools/locale_fields.dart';

/// WMOAreaTable 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
final wMOAreaTable = DbcSchema(
  name: 'WMOAreaTable',
  format: 'niiiiiiiiiisssssssssssssssss',
  fields: [
    const Field(index: 0, name: 'ID', description: 'ID', type: FieldType.id),
    const Field(index: 1, name: 'WMOID', description: 'WMOID', type: FieldType.int32),
    const Field(index: 2, name: 'NameSetID', description: 'NameSetID', type: FieldType.int32),
    const Field(index: 3, name: 'WMOGroupID', description: 'WMOGroupID', type: FieldType.int32),
    const Field(index: 4, name: 'SoundProviderPref', description: 'SoundProviderPref', type: FieldType.int32),
    const Field(index: 5, name: 'SoundProviderPrefUnderwater', description: 'SoundProviderPrefUnderwater', type: FieldType.int32),
    const Field(index: 6, name: 'AmbienceID', description: 'AmbienceID', type: FieldType.int32),
    const Field(index: 7, name: 'ZoneMusic', description: 'ZoneMusic', type: FieldType.int32),
    const Field(index: 8, name: 'IntroSound', description: 'IntroSound', type: FieldType.int32),
    const Field(index: 9, name: 'Flags', description: 'Flags', type: FieldType.int32),
    const Field(index: 10, name: 'AreaTableID', description: 'AreaTableID', type: FieldType.int32),
    ...createLocaleFieldsWithFlag(11, 'AreaName_lang', 'AreaName_lang'),
  ],
);
