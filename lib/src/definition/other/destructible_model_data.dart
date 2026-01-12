import 'package:warcrafty/src/definition/base/field_definition.dart';
import 'package:warcrafty/src/definition/base/structure_definition.dart';
import 'package:warcrafty/src/core/field_format.dart';

/// DestructibleModelData 格式字符串

/// DestructibleModelData 结构定义
const destructibleModelData = DbcStructureDefinition(
  name: 'DestructibleModelData',
  format: 'nxxixxxixxxixxxixxx',
  fields: [
    FieldDefinition(index: 0, name: 'ID', description: 'ID', format: DbcFieldFormat.intType),
    FieldDefinition(index: 1, name: 'Unknown1', description: '未知1', format: DbcFieldFormat.na),
    FieldDefinition(index: 2, name: 'Unknown2', description: '未知2', format: DbcFieldFormat.naByte),
    FieldDefinition(index: 3, name: 'State0Wmo', description: '状态 0 WMO', format: DbcFieldFormat.intType),
    FieldDefinition(index: 4, name: 'State0Destruction', description: '状态 0 破坏', format: DbcFieldFormat.na),
    FieldDefinition(index: 5, name: 'State0Unknown', description: '状态 0 未知', format: DbcFieldFormat.na),
    FieldDefinition(index: 6, name: 'State1Wmo', description: '状态 1 WMO', format: DbcFieldFormat.intType),
    FieldDefinition(index: 7, name: 'State1Destruction', description: '状态 1 破坏', format: DbcFieldFormat.na),
    FieldDefinition(index: 8, name: 'State1Unknown', description: '状态 1 未知', format: DbcFieldFormat.na),
    FieldDefinition(index: 9, name: 'State2Wmo', description: '状态 2 WMO', format: DbcFieldFormat.intType),
    FieldDefinition(index: 10, name: 'State2Destruction', description: '状态 2 破坏', format: DbcFieldFormat.na),
    FieldDefinition(index: 11, name: 'State2Unknown', description: '状态 2 未知', format: DbcFieldFormat.na),
  ],
);
