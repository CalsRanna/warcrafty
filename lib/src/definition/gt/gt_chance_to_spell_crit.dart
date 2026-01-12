/// GtChanceToSpellCrit.dbc - 法术暴击值格式
library;

import '../base/field_definition.dart';
import '../base/structure_definition.dart';
import '../../core/field_format.dart';

/// GtChanceToSpellCrit 格式字符串
const String gtChanceToSpellCritFormat = 'df';

/// GtChanceToSpellCrit 结构定义
const DbcStructureDefinition gtChanceToSpellCrit = DbcStructureDefinition(
  name: 'GtChanceToSpellCrit',
  format: gtChanceToSpellCritFormat,
  fields: [
    FieldDefinition(index: 0, name: 'Ratio', description: '比率', format: DbcFieldFormat.sort),
    FieldDefinition(index: 1, name: 'Value', description: '值', format: DbcFieldFormat.float),
  ],
);
