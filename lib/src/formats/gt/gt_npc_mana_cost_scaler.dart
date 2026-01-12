/// GtNPCManaCostScaler.dbc - NPC 法力消耗缩放器格式
library;

import '../base/field_definition.dart';
import '../base/structure_definition.dart';
import '../../core/field_format.dart';

/// GtNPCManaCostScaler 格式字符串
const String gtNpcManaCostScalerFormat = 'df';

/// GtNPCManaCostScaler 结构定义
const DbcStructureDefinition gtNpcManaCostScaler = DbcStructureDefinition(
  name: 'GtNPCManaCostScaler',
  format: gtNpcManaCostScalerFormat,
  fields: [
    FieldDefinition(index: 0, name: 'Ratio', description: '比率', format: DbcFieldFormat.sort),
    FieldDefinition(index: 1, name: 'Value', description: '值', format: DbcFieldFormat.float),
  ],
);
