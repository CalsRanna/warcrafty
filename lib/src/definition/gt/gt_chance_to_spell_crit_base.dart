import 'package:warcrafty/src/definition/base/field_definition.dart';
import 'package:warcrafty/src/definition/base/structure_definition.dart';
import 'package:warcrafty/src/core/field_format.dart';

/// GtChanceToSpellCritBase 格式字符串

/// GtChanceToSpellCritBase 结构定义
const gtChanceToSpellCritBase = DbcStructureDefinition(
  name: 'GtChanceToSpellCritBase',
  format: 'df',
  fields: [
    FieldDefinition(index: 0, name: 'Ratio', description: '比率', format: DbcFieldFormat.sort),
    FieldDefinition(index: 1, name: 'Value', description: '值', format: DbcFieldFormat.float),
  ],
);
