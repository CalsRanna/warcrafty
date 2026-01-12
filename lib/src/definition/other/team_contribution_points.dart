import 'package:warcrafty/src/definition/base/field_definition.dart';
import 'package:warcrafty/src/definition/base/structure_definition.dart';
import 'package:warcrafty/src/core/field_format.dart';

/// TeamContributionPoints 格式字符串

/// TeamContributionPoints 结构定义
const teamContributionPoints = DbcStructureDefinition(
  name: 'TeamContributionPoints',
  format: 'df',
  fields: [
    FieldDefinition(index: 0, name: 'Value', description: '值', format: DbcFieldFormat.sort),
    FieldDefinition(index: 1, name: 'Contribution', description: '贡献', format: DbcFieldFormat.float),
  ],
);
