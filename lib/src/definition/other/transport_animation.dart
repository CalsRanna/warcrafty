import 'package:warcrafty/src/definition/base/field_definition.dart';
import 'package:warcrafty/src/definition/base/structure_definition.dart';
import 'package:warcrafty/src/core/field_format.dart';

/// TransportAnimation 格式字符串

/// TransportAnimation 结构定义
const transportAnimation = DbcStructureDefinition(
  name: 'TransportAnimation',
  format: 'diifffx',
  fields: [
    FieldDefinition(index: 0, name: 'TransportID', description: '运输工具 ID', format: DbcFieldFormat.sort),
    FieldDefinition(index: 1, name: 'Unknown1', description: '未知1', format: DbcFieldFormat.intType),
    FieldDefinition(index: 2, name: 'PosX', description: '位置 X', format: DbcFieldFormat.float),
    FieldDefinition(index: 3, name: 'PosY', description: '位置 Y', format: DbcFieldFormat.float),
    FieldDefinition(index: 4, name: 'PosZ', description: '位置 Z', format: DbcFieldFormat.float),
    FieldDefinition(index: 5, name: 'SequenceID', description: '序列 ID', format: DbcFieldFormat.na),
  ],
);
