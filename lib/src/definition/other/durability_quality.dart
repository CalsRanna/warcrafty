/// DurabilityQuality.dbc - 持久度质量格式
library;

import '../base/field_definition.dart';
import '../base/structure_definition.dart';
import '../../core/field_format.dart';

/// DurabilityQuality 格式字符串
const String durabilityQualityFormat = 'nf';

/// DurabilityQuality 结构定义
const DbcStructureDefinition durabilityQuality = DbcStructureDefinition(
  name: 'DurabilityQuality',
  format: durabilityQualityFormat,
  fields: [
    FieldDefinition(index: 0, name: 'ID', description: 'ID', format: DbcFieldFormat.intType),
    FieldDefinition(index: 1, name: 'QualityModifier', description: '质量修正值', format: DbcFieldFormat.float),
  ],
);
