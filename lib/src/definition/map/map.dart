import 'package:warcrafty/src/schema/field.dart';
import 'package:warcrafty/src/schema/schema.dart';
import 'package:warcrafty/src/tools/locale_fields.dart';

/// Map 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
final map = DbcSchema(
  name: 'Map',
  format: 'nsiiisssssssssssssssssissssssssssssssssssssssssssssssssssififfiiii',
  fields: [
    const Field(index: 0, name: 'ID', description: 'ID', type: FieldType.id),
    const Field(index: 1, name: 'Directory', description: 'Directory', type: FieldType.string),
    const Field(index: 2, name: 'InstanceType', description: 'InstanceType', type: FieldType.int32),
    const Field(index: 3, name: 'Flags', description: 'Flags', type: FieldType.int32),
    const Field(index: 4, name: 'PVP', description: 'PVP', type: FieldType.int32),
    ...createLocaleFieldsWithFlag(5, 'MapName_lang', 'MapName_lang'),
    const Field(index: 22, name: 'AreaTableID', description: 'AreaTableID', type: FieldType.int32),
    ...createLocaleFieldsWithFlag(23, 'MapDescription0_lang', 'MapDescription0_lang'),
    ...createLocaleFieldsWithFlag(40, 'MapDescription1_lang', 'MapDescription1_lang'),
    const Field(index: 57, name: 'LoadingScreenID', description: 'LoadingScreenID', type: FieldType.int32),
    const Field(index: 58, name: 'MinimapIconScale', description: 'MinimapIconScale', type: FieldType.float),
    const Field(index: 59, name: 'CorpseMapID', description: 'CorpseMapID', type: FieldType.int32),
    const Field(index: 60, name: 'Corpse0', description: 'Corpse 0', type: FieldType.float),
    const Field(index: 61, name: 'Corpse1', description: 'Corpse 1', type: FieldType.float),
    const Field(index: 62, name: 'TimeOfDayOverride', description: 'TimeOfDayOverride', type: FieldType.int32),
    const Field(index: 63, name: 'ExpansionID', description: 'ExpansionID', type: FieldType.int32),
    const Field(index: 64, name: 'RaidOffset', description: 'RaidOffset', type: FieldType.int32),
    const Field(index: 65, name: 'MaxPlayers', description: 'MaxPlayers', type: FieldType.int32),
  ],
);
