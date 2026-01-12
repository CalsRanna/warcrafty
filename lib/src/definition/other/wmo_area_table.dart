import 'package:warcrafty/src/definition/base/field_definition.dart';
import 'package:warcrafty/src/definition/base/structure_definition.dart';
import 'package:warcrafty/src/core/field_format.dart';

/// WMOAreaTable 格式字符串

/// WMOAreaTable 结构定义
const wmoAreaTable = DbcStructureDefinition(
  name: 'WMOAreaTable',
  format: 'niiixxxxxiixxxxxxxxxxxxxxxxx',
  fields: [
    FieldDefinition(index: 0, name: 'ID', description: 'ID', format: DbcFieldFormat.intType),
    FieldDefinition(index: 1, name: 'RootID', description: '根 ID', format: DbcFieldFormat.intType),
    FieldDefinition(index: 2, name: 'DoodadID', description: '模型 ID', format: DbcFieldFormat.intType),
    FieldDefinition(index: 3, name: 'NameID', description: '名称 ID', format: DbcFieldFormat.intType),
    FieldDefinition(index: 4, name: 'Unknown1', description: '未知1', format: DbcFieldFormat.na),
    FieldDefinition(index: 5, name: 'Unknown2', description: '未知2', format: DbcFieldFormat.intType),
    FieldDefinition(index: 6, name: 'Unknown3', description: '未知3', format: DbcFieldFormat.na),
  ],
);
