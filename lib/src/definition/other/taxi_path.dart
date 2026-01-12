import 'package:warcrafty/src/definition/base/field_definition.dart';
import 'package:warcrafty/src/definition/base/structure_definition.dart';
import 'package:warcrafty/src/core/field_format.dart';

/// TaxiPath 格式字符串

/// TaxiPath 结构定义
const taxiPath = DbcStructureDefinition(
  name: 'TaxiPath',
  format: 'niii',
  fields: [
    FieldDefinition(index: 0, name: 'ID', description: '路径 ID', format: DbcFieldFormat.intType),
    FieldDefinition(index: 1, name: 'FromNode', description: '起点节点', format: DbcFieldFormat.intType),
    FieldDefinition(index: 2, name: 'ToNode', description: '终点节点', format: DbcFieldFormat.intType),
    FieldDefinition(index: 3, name: 'Cost', description: '花费', format: DbcFieldFormat.intType),
  ],
);
