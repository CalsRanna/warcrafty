/// GtChanceToMeleeCrit.dbc - 物理暴击值格式
library;

import '../base/field_definition.dart';
import '../base/structure_definition.dart';
import '../../core/field_format.dart';

/// GtChanceToMeleeCrit 格式字符串
const String gtChanceToMeleeCritFormat = 'df';

/// GtChanceToMeleeCrit 结构定义
const DbcStructureDefinition gtChanceToMeleeCrit = DbcStructureDefinition(
  name: 'GtChanceToMeleeCrit',
  format: gtChanceToMeleeCritFormat,
  fields: [
    FieldDefinition(index: 0, name: 'Ratio', description: '比率', format: DbcFieldFormat.sort),
    FieldDefinition(index: 1, name: 'Value', description: '值', format: DbcFieldFormat.float),
  ],
);
