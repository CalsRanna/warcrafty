import 'package:warcrafty/src/definition/base/field_definition.dart';
import 'package:warcrafty/src/definition/base/structure_definition.dart';
import 'package:warcrafty/src/core/field_format.dart';

/// EmotesText 格式字符串

/// EmotesText 结构定义
const emotesText = DbcStructureDefinition(
  name: 'EmotesText',
  format: 'nxixxxxxxxxxxxxxxxx',
  fields: [
    FieldDefinition(index: 0, name: 'ID', description: 'ID', format: DbcFieldFormat.intType),
    FieldDefinition(index: 1, name: 'Unknown1', description: '未知1', format: DbcFieldFormat.na),
    FieldDefinition(index: 2, name: 'EmoteID', description: '表情 ID', format: DbcFieldFormat.intType),
    FieldDefinition(index: 3, name: 'EmoteText', description: '表情文本', format: DbcFieldFormat.na),
  ],
);
