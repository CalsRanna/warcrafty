import 'package:warcrafty/src/definition/base/field_definition.dart';
import 'package:warcrafty/src/definition/base/structure_definition.dart';
import 'package:warcrafty/src/core/field_format.dart';

/// ChrClasses 结构定义
const chrClasses = DbcStructureDefinition(
  name: 'ChrClasses',
  format: 'nxixssssssssssssssssxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxixii',
  fields: [
    FieldDefinition(index: 0, name: 'ClassID', description: '职业 ID', format: DbcFieldFormat.intType),
    FieldDefinition(index: 1, name: 'Unused1', description: '未使用', format: DbcFieldFormat.na),
    FieldDefinition(index: 2, name: 'PowerType', description: '能量类型', format: DbcFieldFormat.intType),
    FieldDefinition(index: 3, name: 'Unused3', description: '未使用', format: DbcFieldFormat.na),
    FieldDefinition(index: 4, name: 'Unused4', description: '未使用', format: DbcFieldFormat.na),
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
    FieldDefinition(index: 21, name: 'Unused21', description: '未使用', format: DbcFieldFormat.na),
    FieldDefinition(index: 22, name: 'Unused22', description: '未使用', format: DbcFieldFormat.na),
    FieldDefinition(index: 23, name: 'Unused23', description: '未使用', format: DbcFieldFormat.na),
    FieldDefinition(index: 24, name: 'SpellFamily', description: '法术族', format: DbcFieldFormat.intType),
    FieldDefinition(index: 25, name: 'Unused25', description: '未使用', format: DbcFieldFormat.na),
    FieldDefinition(index: 26, name: 'CinematicSequence', description: '过场动画序列 ID', format: DbcFieldFormat.intType),
    FieldDefinition(index: 27, name: 'Expansion', description: '资料片 ID', format: DbcFieldFormat.intType),
  ],
);
