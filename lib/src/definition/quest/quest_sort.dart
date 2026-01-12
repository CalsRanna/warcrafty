import 'package:warcrafty/src/definition/base/field_definition.dart';
import 'package:warcrafty/src/definition/base/structure_definition.dart';
import 'package:warcrafty/src/core/field_format.dart';

/// QuestSort 格式字符串

/// QuestSort 结构定义
const questSort = DbcStructureDefinition(
  name: 'QuestSort',
  format: 'nxxxxxxxxxxxxxxxxx',
  fields: [
    FieldDefinition(index: 0, name: 'ID', description: '任务分类 ID', format: DbcFieldFormat.intType),
    FieldDefinition(index: 1, name: 'Unused1', description: '未使用', format: DbcFieldFormat.na),
  ],
);
