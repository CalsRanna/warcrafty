/// TotemCategory.dbc - 图腾类别格式
library;

import '../base/field_definition.dart';
import '../base/structure_definition.dart';
import '../../core/field_format.dart';

/// TotemCategory 格式字符串
const String totemCategoryFormat = 'nxxxxxxxxxxxxxxxxxii';

/// TotemCategory 结构定义
const DbcStructureDefinition totemCategory = DbcStructureDefinition(
  name: 'TotemCategory',
  format: totemCategoryFormat,
  fields: [
    FieldDefinition(index: 0, name: 'ID', description: 'ID', format: DbcFieldFormat.intType),
    FieldDefinition(index: 1, name: 'Name', description: '名称', format: DbcFieldFormat.na),
    FieldDefinition(index: 2, name: 'Unknown1', description: '未知1', format: DbcFieldFormat.intType),
    FieldDefinition(index: 3, name: 'Unknown2', description: '未知2', format: DbcFieldFormat.intType),
  ],
);
