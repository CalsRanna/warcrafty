import 'package:warcrafty/src/definition/base/field_definition.dart';
import 'package:warcrafty/src/definition/base/structure_definition.dart';
import 'package:warcrafty/src/core/field_format.dart';

/// GemProperties 格式字符串

/// GemProperties 结构定义
const gemProperties = DbcStructureDefinition(
  name: 'GemProperties',
  format: 'nixxi',
  fields: [
    FieldDefinition(index: 0, name: 'ID', description: 'ID', format: DbcFieldFormat.intType),
    FieldDefinition(index: 1, name: 'EnchantId', description: '附魔 ID', format: DbcFieldFormat.intType),
    FieldDefinition(index: 2, name: 'Unknown1', description: '未知1', format: DbcFieldFormat.na),
    FieldDefinition(index: 3, name: 'MaxCount', description: '最大数量', format: DbcFieldFormat.intType),
    FieldDefinition(index: 4, name: 'Type', description: '类型', format: DbcFieldFormat.intType),
  ],
);
