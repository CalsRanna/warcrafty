/// GtCombatRatings.dbc - 战斗评级格式
library;

import '../base/field_definition.dart';
import '../base/structure_definition.dart';
import '../../core/field_format.dart';

/// GtCombatRatings 格式字符串
const String gtCombatRatingsFormat = 'df';

/// GtCombatRatings 结构定义
const DbcStructureDefinition gtCombatRatings = DbcStructureDefinition(
  name: 'GtCombatRatings',
  format: gtCombatRatingsFormat,
  fields: [
    FieldDefinition(index: 0, name: 'Ratio', description: '比率', format: DbcFieldFormat.sort),
    FieldDefinition(index: 1, name: 'Value', description: '值', format: DbcFieldFormat.float),
  ],
);
