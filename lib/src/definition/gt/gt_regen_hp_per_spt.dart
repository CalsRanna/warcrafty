/// GtRegenHPPerSpt.dbc - 每等级生命恢复格式
library;

import '../base/field_definition.dart';
import '../base/structure_definition.dart';
import '../../core/field_format.dart';

/// GtRegenHPPerSpt 格式字符串
const String gtRegenHpPerSptFormat = 'df';

/// GtRegenHPPerSpt 结构定义
const DbcStructureDefinition gtRegenHpPerSpt = DbcStructureDefinition(
  name: 'GtRegenHPPerSpt',
  format: gtRegenHpPerSptFormat,
  fields: [
    FieldDefinition(index: 0, name: 'Ratio', description: '比率', format: DbcFieldFormat.sort),
    FieldDefinition(index: 1, name: 'Value', description: '值', format: DbcFieldFormat.float),
  ],
);
