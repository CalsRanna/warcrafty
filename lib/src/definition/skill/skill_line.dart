import 'package:warcrafty/src/definition/base/field_definition.dart';
import 'package:warcrafty/src/definition/base/structure_definition.dart';
import 'package:warcrafty/src/core/field_format.dart';

/// SkillLine 格式字符串

/// SkillLine 结构定义
const skillLine = DbcStructureDefinition(
  name: 'SkillLine',
  format: 'nixssssssssssssssssxxxxxxxxxxxxxxxxxxixxxxxxxxxxxxxxxxxi',
  fields: [
    FieldDefinition(index: 0, name: 'ID', description: '技能线 ID', format: DbcFieldFormat.intType),
    FieldDefinition(index: 1, name: 'CategoryID', description: '类别 ID', format: DbcFieldFormat.intType),
    FieldDefinition(index: 2, name: 'Unused2', description: '未使用', format: DbcFieldFormat.na),
    FieldDefinition(index: 3, name: 'Name_enUS', description: '英文名称', format: DbcFieldFormat.string),
    FieldDefinition(index: 4, name: 'Name_enGB', description: '英式英文名称', format: DbcFieldFormat.string),
    FieldDefinition(index: 5, name: 'Name_koKR', description: '韩文名称', format: DbcFieldFormat.string),
    FieldDefinition(index: 6, name: 'Name_frFR', description: '法文名称', format: DbcFieldFormat.string),
    FieldDefinition(index: 7, name: 'Name_deDE', description: '德文名称', format: DbcFieldFormat.string),
    FieldDefinition(index: 8, name: 'Name_enCN', description: '简体中文名称', format: DbcFieldFormat.string),
    FieldDefinition(index: 9, name: 'Name_zhCN', description: '繁体中文名称', format: DbcFieldFormat.string),
    FieldDefinition(index: 10, name: 'Name_zhTW', description: '台湾繁体中文名称', format: DbcFieldFormat.string),
    FieldDefinition(index: 11, name: 'Name_esES', description: '西班牙文名称', format: DbcFieldFormat.string),
    FieldDefinition(index: 12, name: 'Name_esMX', description: '墨西哥西班牙文名称', format: DbcFieldFormat.string),
    FieldDefinition(index: 13, name: 'Name_ruRU', description: '俄文名称', format: DbcFieldFormat.string),
    FieldDefinition(index: 14, name: 'Name_ptBR', description: '葡萄牙文名称', format: DbcFieldFormat.string),
    FieldDefinition(index: 15, name: 'Name_itIT', description: '意大利文名称', format: DbcFieldFormat.string),
    FieldDefinition(index: 16, name: 'Name_ptPT', description: '葡萄牙葡萄牙文名称', format: DbcFieldFormat.string),
    FieldDefinition(index: 17, name: 'Name_unk', description: '未知语言名称', format: DbcFieldFormat.string),
    FieldDefinition(index: 18, name: 'Name_unk2', description: '未知语言名称 2', format: DbcFieldFormat.string),
    FieldDefinition(index: 19, name: 'Unused19', description: '未使用', format: DbcFieldFormat.na),
    FieldDefinition(index: 20, name: 'Description_enUS', description: '英文描述', format: DbcFieldFormat.string),
    FieldDefinition(index: 21, name: 'Description_enGB', description: '英式英文描述', format: DbcFieldFormat.string),
    FieldDefinition(index: 22, name: 'Description_koKR', description: '韩文描述', format: DbcFieldFormat.string),
    FieldDefinition(index: 23, name: 'Description_frFR', description: '法文描述', format: DbcFieldFormat.string),
    FieldDefinition(index: 24, name: 'Description_deDE', description: '德文描述', format: DbcFieldFormat.string),
    FieldDefinition(index: 25, name: 'Description_enCN', description: '简体中文描述', format: DbcFieldFormat.string),
    FieldDefinition(index: 26, name: 'Description_zhCN', description: '繁体中文描述', format: DbcFieldFormat.string),
    FieldDefinition(index: 27, name: 'Description_zhTW', description: '台湾繁体中文描述', format: DbcFieldFormat.string),
    FieldDefinition(index: 28, name: 'Description_esES', description: '西班牙文描述', format: DbcFieldFormat.string),
    FieldDefinition(index: 29, name: 'Description_esMX', description: '墨西哥西班牙文描述', format: DbcFieldFormat.string),
    FieldDefinition(index: 30, name: 'Description_ruRU', description: '俄文描述', format: DbcFieldFormat.string),
    FieldDefinition(index: 31, name: 'Description_ptBR', description: '葡萄牙文描述', format: DbcFieldFormat.string),
    FieldDefinition(index: 32, name: 'Description_itIT', description: '意大利文描述', format: DbcFieldFormat.string),
    FieldDefinition(index: 33, name: 'Description_ptPT', description: '葡萄牙葡萄牙文描述', format: DbcFieldFormat.string),
    FieldDefinition(index: 34, name: 'Description_unk', description: '未知语言描述', format: DbcFieldFormat.string),
    FieldDefinition(index: 35, name: 'Description_unk2', description: '未知语言描述 2', format: DbcFieldFormat.string),
    FieldDefinition(index: 36, name: 'SpellIcon', description: '法术图标 ID', format: DbcFieldFormat.intType),
    FieldDefinition(index: 37, name: 'AlternateVerb_enUS', description: '英文可选动词', format: DbcFieldFormat.string),
    FieldDefinition(index: 38, name: 'CanLink', description: '是否可以链接 (专业技能有配方)', format: DbcFieldFormat.intType),
  ],
);
