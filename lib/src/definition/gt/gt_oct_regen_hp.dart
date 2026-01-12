/// GtOCTRegenHP.dbc - 职业生命恢复格式
library;

import '../base/field_definition.dart';
import '../base/structure_definition.dart';
import '../../core/field_format.dart';

/// GtOCTRegenHP 格式字符串
const String gtOctRegenHpFormat = 'df';

/// GtOCTRegenHP 结构定义
const DbcStructureDefinition gtOctRegenHp = DbcStructureDefinition(
  name: 'GtOCTRegenHP',
  format: gtOctRegenHpFormat,
  fields: [
    FieldDefinition(index: 0, name: 'Ratio', description: '比率', format: DbcFieldFormat.sort),
    FieldDefinition(index: 1, name: 'Value', description: '值', format: DbcFieldFormat.float),
  ],
);
