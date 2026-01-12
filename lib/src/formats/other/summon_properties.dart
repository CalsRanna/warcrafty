/// SummonProperties.dbc - 召唤属性格式
library;

import '../base/field_definition.dart';
import '../base/structure_definition.dart';
import '../../core/field_format.dart';

/// SummonProperties 格式字符串
const String summonPropertiesFormat = 'niiiii';

/// SummonProperties 结构定义
const DbcStructureDefinition summonProperties = DbcStructureDefinition(
  name: 'SummonProperties',
  format: summonPropertiesFormat,
  fields: [
    FieldDefinition(index: 0, name: 'ID', description: 'ID', format: DbcFieldFormat.intType),
    FieldDefinition(index: 1, name: 'Category', description: '类别', format: DbcFieldFormat.intType),
    FieldDefinition(index: 2, name: 'Unknown1', description: '未知1', format: DbcFieldFormat.intType),
    FieldDefinition(index: 3, name: 'Unknown2', description: '未知2', format: DbcFieldFormat.intType),
    FieldDefinition(index: 4, name: 'Unknown3', description: '未知3', format: DbcFieldFormat.intType),
    FieldDefinition(index: 5, name: 'Unknown4', description: '未知4', format: DbcFieldFormat.intType),
  ],
);
