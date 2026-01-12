import 'package:warcrafty/src/definition/base/field_definition.dart';
import 'package:warcrafty/src/definition/base/structure_definition.dart';
import 'package:warcrafty/src/core/field_format.dart';

/// TransportRotation 格式字符串

/// TransportRotation 结构定义
const transportRotation = DbcStructureDefinition(
  name: 'TransportRotation',
  format: 'diiffff',
  fields: [
    FieldDefinition(index: 0, name: 'TransportID', description: '运输工具 ID', format: DbcFieldFormat.sort),
    FieldDefinition(index: 1, name: 'Unknown1', description: '未知1', format: DbcFieldFormat.intType),
    FieldDefinition(index: 2, name: 'RotX', description: '旋转 X', format: DbcFieldFormat.float),
    FieldDefinition(index: 3, name: 'RotY', description: '旋转 Y', format: DbcFieldFormat.float),
    FieldDefinition(index: 4, name: 'RotZ', description: '旋转 Z', format: DbcFieldFormat.float),
    FieldDefinition(index: 5, name: 'RotW', description: '旋转 W', format: DbcFieldFormat.float),
  ],
);
