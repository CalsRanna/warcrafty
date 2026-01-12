/// EmotesText.dbc - 表情文本格式
library;

import '../base/field_definition.dart';
import '../base/structure_definition.dart';
import '../../core/field_format.dart';

/// EmotesText 格式字符串
const String emotesTextFormat = 'nxixxxxxxxxxxxxxxxx';

/// EmotesText 结构定义
const DbcStructureDefinition emotesText = DbcStructureDefinition(
  name: 'EmotesText',
  format: emotesTextFormat,
  fields: [
    FieldDefinition(index: 0, name: 'ID', description: 'ID', format: DbcFieldFormat.intType),
    FieldDefinition(index: 1, name: 'Unknown1', description: '未知1', format: DbcFieldFormat.na),
    FieldDefinition(index: 2, name: 'EmoteID', description: '表情 ID', format: DbcFieldFormat.intType),
    FieldDefinition(index: 3, name: 'EmoteText', description: '表情文本', format: DbcFieldFormat.na),
  ],
);
