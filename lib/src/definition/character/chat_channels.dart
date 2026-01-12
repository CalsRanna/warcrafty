/// ChatChannels.dbc - 聊天频道格式
library;

import '../base/field_definition.dart';
import '../base/structure_definition.dart';
import '../../core/field_format.dart';

/// ChatChannels 格式字符串
const String chatChannelsFormat = 'nixssssssssssssssssxxxxxxxxxxxxxxxxxx';

/// ChatChannels 结构定义
const DbcStructureDefinition chatChannels = DbcStructureDefinition(
  name: 'ChatChannels',
  format: chatChannelsFormat,
  fields: [
    FieldDefinition(index: 0, name: 'ChannelID', description: '频道 ID', format: DbcFieldFormat.intType),
    FieldDefinition(index: 1, name: 'Flags', description: '标志', format: DbcFieldFormat.intType),
    FieldDefinition(index: 2, name: 'Pattern_enUS', description: '英文模式', format: DbcFieldFormat.string),
    FieldDefinition(index: 3, name: 'Pattern_enGB', description: '英式英文模式', format: DbcFieldFormat.string),
    FieldDefinition(index: 4, name: 'Pattern_koKR', description: '韩文模式', format: DbcFieldFormat.string),
    FieldDefinition(index: 5, name: 'Pattern_frFR', description: '法文模式', format: DbcFieldFormat.string),
    FieldDefinition(index: 6, name: 'Pattern_deDE', description: '德文模式', format: DbcFieldFormat.string),
    FieldDefinition(index: 7, name: 'Pattern_enCN', description: '简体中文模式', format: DbcFieldFormat.string),
    FieldDefinition(index: 8, name: 'Pattern_zhCN', description: '繁体中文模式', format: DbcFieldFormat.string),
    FieldDefinition(index: 9, name: 'Pattern_zhTW', description: '台湾繁体中文模式', format: DbcFieldFormat.string),
    FieldDefinition(index: 10, name: 'Pattern_esES', description: '西班牙文模式', format: DbcFieldFormat.string),
    FieldDefinition(index: 11, name: 'Pattern_esMX', description: '墨西哥西班牙文模式', format: DbcFieldFormat.string),
    FieldDefinition(index: 12, name: 'Pattern_ruRU', description: '俄文模式', format: DbcFieldFormat.string),
    FieldDefinition(index: 13, name: 'Pattern_ptBR', description: '葡萄牙文模式', format: DbcFieldFormat.string),
    FieldDefinition(index: 14, name: 'Pattern_itIT', description: '意大利文模式', format: DbcFieldFormat.string),
    FieldDefinition(index: 15, name: 'Pattern_ptPT', description: '葡萄牙葡萄牙文模式', format: DbcFieldFormat.string),
    FieldDefinition(index: 16, name: 'Pattern_unk', description: '未知语言模式', format: DbcFieldFormat.string),
    FieldDefinition(index: 17, name: 'Pattern_unk2', description: '未知语言模式 2', format: DbcFieldFormat.string),
  ],
);
