import 'package:warcrafty/src/definition/base/field_definition.dart';
import 'package:warcrafty/src/definition/base/structure_definition.dart';
import 'package:warcrafty/src/core/field_format.dart';

/// AreaGroup 格式字符串

/// AreaGroup 结构定义
const areaGroup = DbcStructureDefinition(
  name: 'AreaGroup',
  format: 'niiiiiii',
  fields: [
    FieldDefinition(index: 0, name: 'AreaGroupID', description: '区域组 ID', format: DbcFieldFormat.intType),
    FieldDefinition(index: 1, name: 'AreaID0', description: '区域 ID 0', format: DbcFieldFormat.intType),
    FieldDefinition(index: 2, name: 'AreaID1', description: '区域 ID 1', format: DbcFieldFormat.intType),
    FieldDefinition(index: 3, name: 'AreaID2', description: '区域 ID 2', format: DbcFieldFormat.intType),
    FieldDefinition(index: 4, name: 'AreaID3', description: '区域 ID 3', format: DbcFieldFormat.intType),
    FieldDefinition(index: 5, name: 'AreaID4', description: '区域 ID 4', format: DbcFieldFormat.intType),
    FieldDefinition(index: 6, name: 'AreaID5', description: '区域 ID 5', format: DbcFieldFormat.intType),
    FieldDefinition(index: 7, name: 'NextGroup', description: '下一组索引', format: DbcFieldFormat.intType),
  ],
);
