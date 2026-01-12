import 'package:warcrafty/src/definition/base/field_definition.dart';
import 'package:warcrafty/src/definition/base/structure_definition.dart';
import 'package:warcrafty/src/core/field_format.dart';

/// StableSlotPrices 格式字符串

/// StableSlotPrices 结构定义
const stableSlotPrices = DbcStructureDefinition(
  name: 'StableSlotPrices',
  format: 'ni',
  fields: [
    FieldDefinition(index: 0, name: 'Slot', description: '槽位', format: DbcFieldFormat.intType),
    FieldDefinition(index: 1, name: 'Price', description: '价格', format: DbcFieldFormat.intType),
  ],
);
