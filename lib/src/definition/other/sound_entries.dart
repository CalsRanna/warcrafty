import 'package:warcrafty/src/definition/base/field_definition.dart';
import 'package:warcrafty/src/definition/base/structure_definition.dart';
import 'package:warcrafty/src/core/field_format.dart';

/// SoundEntries 格式字符串

/// SoundEntries 结构定义
const soundEntries = DbcStructureDefinition(
  name: 'SoundEntries',
  format: 'nxxxxxxxxxxxxxxxxxxxxxxxxxxxxx',
  fields: [
    FieldDefinition(index: 0, name: 'ID', description: '声音 ID', format: DbcFieldFormat.intType),
  ],
);
