/// WMOAreaTable.dbc - WMO 区域表格式
library;

import '../base/field_definition.dart';
import '../base/structure_definition.dart';
import '../../core/field_format.dart';

/// WMOAreaTable 格式字符串
const String wmoAreaTableFormat = 'niiixxxxxiixxxxxxxxxxxxxxxxx';

/// WMOAreaTable 结构定义
const DbcStructureDefinition wmoAreaTable = DbcStructureDefinition(
  name: 'WMOAreaTable',
  format: wmoAreaTableFormat,
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
