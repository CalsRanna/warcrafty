/// QuestSort.dbc - 任务分类格式
library;

import '../base/field_definition.dart';
import '../base/structure_definition.dart';
import '../../core/field_format.dart';

/// QuestSort 格式字符串
const String questSortFormat = 'nxxxxxxxxxxxxxxxxx';

/// QuestSort 结构定义
const DbcStructureDefinition questSort = DbcStructureDefinition(
  name: 'QuestSort',
  format: questSortFormat,
  fields: [
    FieldDefinition(index: 0, name: 'ID', description: '任务分类 ID', format: DbcFieldFormat.intType),
    FieldDefinition(index: 1, name: 'Unused1', description: '未使用', format: DbcFieldFormat.na),
  ],
);
