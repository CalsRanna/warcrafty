/// AreaGroup.dbc - 区域组格式
library;

import '../base/field_definition.dart';
import '../base/structure_definition.dart';
import '../../core/field_format.dart';

/// AreaGroup 格式字符串
const String areaGroupFormat = 'niiiiiii';

/// AreaGroup 结构定义
const DbcStructureDefinition areaGroup = DbcStructureDefinition(
  name: 'AreaGroup',
  format: areaGroupFormat,
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
