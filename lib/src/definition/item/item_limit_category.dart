/// ItemLimitCategory.dbc - 物品限制类别格式
library;

import '../base/field_definition.dart';
import '../base/structure_definition.dart';
import '../../core/field_format.dart';

/// ItemLimitCategory 格式字符串
const String itemLimitCategoryFormat = 'nxxxxxxxxxxxxxxxxxii';

/// ItemLimitCategory 结构定义
const DbcStructureDefinition itemLimitCategory = DbcStructureDefinition(
  name: 'ItemLimitCategory',
  format: itemLimitCategoryFormat,
  fields: [
    FieldDefinition(index: 0, name: 'ID', description: 'ID', format: DbcFieldFormat.intType),
    FieldDefinition(index: 1, name: 'Name', description: '名称', format: DbcFieldFormat.na),
    FieldDefinition(index: 2, name: 'MaxCount', description: '最大数量', format: DbcFieldFormat.intType),
    FieldDefinition(index: 3, name: 'Flags', description: '标志', format: DbcFieldFormat.intType),
  ],
);
