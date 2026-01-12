/// PowerDisplay.dbc - 能量显示格式
library;

import '../base/field_definition.dart';
import '../base/structure_definition.dart';
import '../../core/field_format.dart';

/// PowerDisplay 格式字符串
const String powerDisplayFormat = 'nixxxx';

/// PowerDisplay 结构定义
const DbcStructureDefinition powerDisplay = DbcStructureDefinition(
  name: 'PowerDisplay',
  format: powerDisplayFormat,
  fields: [
    FieldDefinition(index: 0, name: 'ID', description: 'ID', format: DbcFieldFormat.intType),
    FieldDefinition(index: 1, name: 'Power', description: '能量', format: DbcFieldFormat.intType),
    FieldDefinition(index: 2, name: 'Unknown1', description: '未知1', format: DbcFieldFormat.na),
    FieldDefinition(index: 3, name: 'Unknown2', description: '未知2', format: DbcFieldFormat.na),
    FieldDefinition(index: 4, name: 'Unknown3', description: '未知3', format: DbcFieldFormat.na),
    FieldDefinition(index: 5, name: 'Unknown4', description: '未知4', format: DbcFieldFormat.na),
  ],
);
