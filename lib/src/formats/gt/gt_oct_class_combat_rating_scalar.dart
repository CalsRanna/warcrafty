/// GtOCTClassCombatRatingScalar.dbc - 职业战斗评级缩放器格式
library;

import '../base/field_definition.dart';
import '../base/structure_definition.dart';
import '../../core/field_format.dart';

/// GtOCTClassCombatRatingScalar 格式字符串
const String gtOctClassCombatRatingScalarFormat = 'df';

/// GtOCTClassCombatRatingScalar 结构定义
const DbcStructureDefinition gtOctClassCombatRatingScalar = DbcStructureDefinition(
  name: 'GtOCTClassCombatRatingScalar',
  format: gtOctClassCombatRatingScalarFormat,
  fields: [
    FieldDefinition(index: 0, name: 'Ratio', description: '比率', format: DbcFieldFormat.sort),
    FieldDefinition(index: 1, name: 'Value', description: '值', format: DbcFieldFormat.float),
  ],
);
