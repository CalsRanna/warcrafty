import 'package:warcrafty/src/definition/base/field_definition.dart';
import 'package:warcrafty/src/definition/base/structure_definition.dart';
import 'package:warcrafty/src/core/field_format.dart';

/// TaxiPathNode 格式字符串

/// TaxiPathNode 结构定义
const taxiPathNode = DbcStructureDefinition(
  name: 'TaxiPathNode',
  format: 'diiifffiiii',
  fields: [
    FieldDefinition(index: 0, name: 'PathID', description: '路径 ID', format: DbcFieldFormat.sort),
    FieldDefinition(index: 1, name: 'NodeIndex', description: '节点索引', format: DbcFieldFormat.intType),
    FieldDefinition(index: 2, name: 'Continent', description: '大陆', format: DbcFieldFormat.intType),
    FieldDefinition(index: 3, name: 'LocX', description: '位置 X', format: DbcFieldFormat.float),
    FieldDefinition(index: 4, name: 'LocY', description: '位置 Y', format: DbcFieldFormat.float),
    FieldDefinition(index: 5, name: 'LocZ', description: '位置 Z', format: DbcFieldFormat.float),
    FieldDefinition(index: 6, name: 'Unknown1', description: '未知1', format: DbcFieldFormat.intType),
    FieldDefinition(index: 7, name: 'Unknown2', description: '未知2', format: DbcFieldFormat.intType),
    FieldDefinition(index: 8, name: 'Unknown3', description: '未知3', format: DbcFieldFormat.intType),
    FieldDefinition(index: 9, name: 'Unknown4', description: '未知4', format: DbcFieldFormat.intType),
  ],
);
