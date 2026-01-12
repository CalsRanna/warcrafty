/// GtRegenMPPerSpt.dbc - 每等级法力恢复格式
library;

import '../base/field_definition.dart';
import '../base/structure_definition.dart';
import '../../core/field_format.dart';

/// GtRegenMPPerSpt 格式字符串
const String gtRegenMpPerSptFormat = 'df';

/// GtRegenMPPerSpt 结构定义
const DbcStructureDefinition gtRegenMpPerSpt = DbcStructureDefinition(
  name: 'GtRegenMPPerSpt',
  format: gtRegenMpPerSptFormat,
  fields: [
    FieldDefinition(index: 0, name: 'Ratio', description: '比率', format: DbcFieldFormat.sort),
    FieldDefinition(index: 1, name: 'Value', description: '值', format: DbcFieldFormat.float),
  ],
);
