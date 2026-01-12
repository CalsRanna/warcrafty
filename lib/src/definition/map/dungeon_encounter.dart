import 'package:warcrafty/src/definition/base/field_definition.dart';
import 'package:warcrafty/src/definition/base/structure_definition.dart';
import 'package:warcrafty/src/core/field_format.dart';

/// DungeonEncounter 格式字符串

/// DungeonEncounter 结构定义
const dungeonEncounter = DbcStructureDefinition(
  name: 'DungeonEncounter',
  format: 'niixissssssssssssssssxx',
  fields: [
    FieldDefinition(index: 0, name: 'ID', description: '首领 ID', format: DbcFieldFormat.intType),
    FieldDefinition(index: 1, name: 'MapID', description: '地图 ID', format: DbcFieldFormat.intType),
    FieldDefinition(index: 2, name: 'Difficulty', description: '难度', format: DbcFieldFormat.intType),
    FieldDefinition(index: 3, name: 'OrderIndex', description: '顺序索引', format: DbcFieldFormat.na),
    FieldDefinition(index: 4, name: 'EncounterIndex', description: '首领索引', format: DbcFieldFormat.intType),
    FieldDefinition(index: 5, name: 'Name_enUS', description: '英文名称', format: DbcFieldFormat.string),
    FieldDefinition(index: 6, name: 'Name_enGB', description: '英式英文名称', format: DbcFieldFormat.string),
    FieldDefinition(index: 7, name: 'Name_koKR', description: '韩文名称', format: DbcFieldFormat.string),
    FieldDefinition(index: 8, name: 'Name_frFR', description: '法文名称', format: DbcFieldFormat.string),
    FieldDefinition(index: 9, name: 'Name_deDE', description: '德文名称', format: DbcFieldFormat.string),
    FieldDefinition(index: 10, name: 'Name_enCN', description: '简体中文名称', format: DbcFieldFormat.string),
    FieldDefinition(index: 11, name: 'Name_zhCN', description: '繁体中文名称', format: DbcFieldFormat.string),
    FieldDefinition(index: 12, name: 'Name_zhTW', description: '台湾繁体中文名称', format: DbcFieldFormat.string),
    FieldDefinition(index: 13, name: 'Name_esES', description: '西班牙文名称', format: DbcFieldFormat.string),
    FieldDefinition(index: 14, name: 'Name_esMX', description: '墨西哥西班牙文名称', format: DbcFieldFormat.string),
    FieldDefinition(index: 15, name: 'Name_ruRU', description: '俄文名称', format: DbcFieldFormat.string),
    FieldDefinition(index: 16, name: 'Name_ptBR', description: '葡萄牙文名称', format: DbcFieldFormat.string),
    FieldDefinition(index: 17, name: 'Name_itIT', description: '意大利文名称', format: DbcFieldFormat.string),
    FieldDefinition(index: 18, name: 'Name_ptPT', description: '葡萄牙葡萄牙文名称', format: DbcFieldFormat.string),
    FieldDefinition(index: 19, name: 'Name_unk', description: '未知语言名称', format: DbcFieldFormat.string),
    FieldDefinition(index: 20, name: 'Name_unk2', description: '未知语言名称 2', format: DbcFieldFormat.string),
    FieldDefinition(index: 21, name: 'SpellIconID', description: '法术图标 ID', format: DbcFieldFormat.na),
  ],
);
