/// TransportRotation.dbc - 运输工具旋转格式
library;

import '../base/field_definition.dart';
import '../base/structure_definition.dart';
import '../../core/field_format.dart';

/// TransportRotation 格式字符串
const String transportRotationFormat = 'diiffff';

/// TransportRotation 结构定义
const DbcStructureDefinition transportRotation = DbcStructureDefinition(
  name: 'TransportRotation',
  format: transportRotationFormat,
  fields: [
    FieldDefinition(index: 0, name: 'TransportID', description: '运输工具 ID', format: DbcFieldFormat.sort),
    FieldDefinition(index: 1, name: 'Unknown1', description: '未知1', format: DbcFieldFormat.intType),
    FieldDefinition(index: 2, name: 'RotX', description: '旋转 X', format: DbcFieldFormat.float),
    FieldDefinition(index: 3, name: 'RotY', description: '旋转 Y', format: DbcFieldFormat.float),
    FieldDefinition(index: 4, name: 'RotZ', description: '旋转 Z', format: DbcFieldFormat.float),
    FieldDefinition(index: 5, name: 'RotW', description: '旋转 W', format: DbcFieldFormat.float),
  ],
);
