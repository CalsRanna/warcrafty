/// SoundEntries.dbc - 声音条目格式
library;

import '../base/field_definition.dart';
import '../base/structure_definition.dart';
import '../../core/field_format.dart';

/// SoundEntries 格式字符串
const String soundEntriesFormat = 'nxxxxxxxxxxxxxxxxxxxxxxxxxxxxx';

/// SoundEntries 结构定义
const DbcStructureDefinition soundEntries = DbcStructureDefinition(
  name: 'SoundEntries',
  format: soundEntriesFormat,
  fields: [
    FieldDefinition(index: 0, name: 'ID', description: '声音 ID', format: DbcFieldFormat.intType),
  ],
);
