import 'package:warcrafty/src/definition/base/field_definition.dart';
import 'package:warcrafty/src/definition/base/structure_definition.dart';
import 'package:warcrafty/src/core/field_format.dart';
import 'package:warcrafty/src/definition/common/locale_fields.dart';

/// Map 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
final map = DbcStructureDefinition(
  name: 'Map',
  format: 'nsiiisssssssssssssssssissssssssssssssssssssssssssssssssssififfiiii',
  fields: [
    const FieldDefinition(index: 0, name: 'ID', description: 'ID', format: DbcFieldFormat.indexField),
    const FieldDefinition(index: 1, name: 'Directory', description: 'Directory', format: DbcFieldFormat.string),
    const FieldDefinition(index: 2, name: 'InstanceType', description: 'InstanceType', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 3, name: 'Flags', description: 'Flags', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 4, name: 'PVP', description: 'PVP', format: DbcFieldFormat.intType),
    ...createLocaleFieldsWithFlag(5, 'MapName_lang', 'MapName_lang'),
    const FieldDefinition(index: 22, name: 'AreaTableID', description: 'AreaTableID', format: DbcFieldFormat.intType),
    ...createLocaleFieldsWithFlag(23, 'MapDescription0_lang', 'MapDescription0_lang'),
    ...createLocaleFieldsWithFlag(40, 'MapDescription1_lang', 'MapDescription1_lang'),
    const FieldDefinition(index: 57, name: 'LoadingScreenID', description: 'LoadingScreenID', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 58, name: 'MinimapIconScale', description: 'MinimapIconScale', format: DbcFieldFormat.float),
    const FieldDefinition(index: 59, name: 'CorpseMapID', description: 'CorpseMapID', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 60, name: 'Corpse0', description: 'Corpse 0', format: DbcFieldFormat.float),
    const FieldDefinition(index: 61, name: 'Corpse1', description: 'Corpse 1', format: DbcFieldFormat.float),
    const FieldDefinition(index: 62, name: 'TimeOfDayOverride', description: 'TimeOfDayOverride', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 63, name: 'ExpansionID', description: 'ExpansionID', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 64, name: 'RaidOffset', description: 'RaidOffset', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 65, name: 'MaxPlayers', description: 'MaxPlayers', format: DbcFieldFormat.intType),
  ],
);
