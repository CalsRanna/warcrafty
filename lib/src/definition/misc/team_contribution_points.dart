import 'package:warcrafty/src/schema/field.dart';
import 'package:warcrafty/src/schema/schema.dart';

/// TeamContributionPoints 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
const teamContributionPoints = DbcSchema(
  name: 'TeamContributionPoints',
  format: 'nf',
  fields: [
    Field(index: 0, name: 'ID', description: 'ID', type: FieldType.id),
    Field(index: 1, name: 'Data', description: 'Data', type: FieldType.float),
  ],
);
