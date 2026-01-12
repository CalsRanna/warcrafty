import 'package:warcrafty/src/definition/base/field_definition.dart';
import 'package:warcrafty/src/definition/base/structure_definition.dart';
import 'package:warcrafty/src/core/field_format.dart';

/// DurabilityQuality 格式字符串

/// DurabilityQuality 结构定义
const durabilityQuality = DbcStructureDefinition(
  name: 'DurabilityQuality',
  format: 'nf',
  fields: [
    FieldDefinition(index: 0, name: 'ID', description: 'ID', format: DbcFieldFormat.intType),
    FieldDefinition(index: 1, name: 'QualityModifier', description: '质量修正值', format: DbcFieldFormat.float),
  ],
);
