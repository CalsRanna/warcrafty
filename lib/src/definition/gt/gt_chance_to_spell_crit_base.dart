/// GtChanceToSpellCritBase.dbc - 法术暴击基础值格式
library;

import '../base/field_definition.dart';
import '../base/structure_definition.dart';
import '../../core/field_format.dart';

/// GtChanceToSpellCritBase 格式字符串
const String gtChanceToSpellCritBaseFormat = 'df';

/// GtChanceToSpellCritBase 结构定义
const DbcStructureDefinition gtChanceToSpellCritBase = DbcStructureDefinition(
  name: 'GtChanceToSpellCritBase',
  format: gtChanceToSpellCritBaseFormat,
  fields: [
    FieldDefinition(index: 0, name: 'Ratio', description: '比率', format: DbcFieldFormat.sort),
    FieldDefinition(index: 1, name: 'Value', description: '值', format: DbcFieldFormat.float),
  ],
);
