import 'package:warcrafty/src/definition/base/field_definition.dart';
import 'package:warcrafty/src/definition/base/structure_definition.dart';
import 'package:warcrafty/src/core/field_format.dart';

/// GameObjectDisplayInfo 格式字符串

/// GameObjectDisplayInfo 结构定义
const gameObjectDisplayInfo = DbcStructureDefinition(
  name: 'GameObjectDisplayInfo',
  format: 'nsxxxxxxxxxxffffffx',
  fields: [
    FieldDefinition(index: 0, name: 'DisplayID', description: '显示 ID', format: DbcFieldFormat.intType),
    FieldDefinition(index: 1, name: 'FileName', description: '文件名', format: DbcFieldFormat.string),
    FieldDefinition(index: 2, name: 'Unused2', description: '未使用', format: DbcFieldFormat.na),
    FieldDefinition(index: 3, name: 'Unused3', description: '未使用', format: DbcFieldFormat.na),
    FieldDefinition(index: 4, name: 'Unused4', description: '未使用', format: DbcFieldFormat.na),
    FieldDefinition(index: 5, name: 'Unused5', description: '未使用', format: DbcFieldFormat.na),
    FieldDefinition(index: 6, name: 'Unused6', description: '未使用', format: DbcFieldFormat.na),
    FieldDefinition(index: 7, name: 'Unused7', description: '未使用', format: DbcFieldFormat.na),
    FieldDefinition(index: 8, name: 'Unused8', description: '未使用', format: DbcFieldFormat.na),
    FieldDefinition(index: 9, name: 'Unused9', description: '未使用', format: DbcFieldFormat.na),
    FieldDefinition(index: 10, name: 'Unused10', description: '未使用', format: DbcFieldFormat.na),
    FieldDefinition(index: 11, name: 'MinX', description: '最小 X', format: DbcFieldFormat.float),
    FieldDefinition(index: 12, name: 'MinY', description: '最小 Y', format: DbcFieldFormat.float),
    FieldDefinition(index: 13, name: 'MinZ', description: '最小 Z', format: DbcFieldFormat.float),
    FieldDefinition(index: 14, name: 'MaxX', description: '最大 X', format: DbcFieldFormat.float),
    FieldDefinition(index: 15, name: 'MaxY', description: '最大 Y', format: DbcFieldFormat.float),
    FieldDefinition(index: 16, name: 'MaxZ', description: '最大 Z', format: DbcFieldFormat.float),
  ],
);
