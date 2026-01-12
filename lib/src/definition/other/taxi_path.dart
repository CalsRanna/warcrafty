/// TaxiPath.dbc - 航线路径格式
library;

import '../base/field_definition.dart';
import '../base/structure_definition.dart';
import '../../core/field_format.dart';

/// TaxiPath 格式字符串
const String taxiPathFormat = 'niii';

/// TaxiPath 结构定义
const DbcStructureDefinition taxiPath = DbcStructureDefinition(
  name: 'TaxiPath',
  format: taxiPathFormat,
  fields: [
    FieldDefinition(index: 0, name: 'ID', description: '路径 ID', format: DbcFieldFormat.intType),
    FieldDefinition(index: 1, name: 'FromNode', description: '起点节点', format: DbcFieldFormat.intType),
    FieldDefinition(index: 2, name: 'ToNode', description: '终点节点', format: DbcFieldFormat.intType),
    FieldDefinition(index: 3, name: 'Cost', description: '花费', format: DbcFieldFormat.intType),
  ],
);
