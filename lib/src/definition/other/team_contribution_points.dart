/// TeamContributionPoints.dbc - 阵营贡献点数格式
library;

import '../base/field_definition.dart';
import '../base/structure_definition.dart';
import '../../core/field_format.dart';

/// TeamContributionPoints 格式字符串
const String teamContributionPointsFormat = 'df';

/// TeamContributionPoints 结构定义
const DbcStructureDefinition teamContributionPoints = DbcStructureDefinition(
  name: 'TeamContributionPoints',
  format: teamContributionPointsFormat,
  fields: [
    FieldDefinition(index: 0, name: 'Value', description: '值', format: DbcFieldFormat.sort),
    FieldDefinition(index: 1, name: 'Contribution', description: '贡献', format: DbcFieldFormat.float),
  ],
);
