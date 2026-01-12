import 'package:warcrafty/src/definition/base/field_definition.dart';
import 'package:warcrafty/src/definition/base/structure_definition.dart';
import 'package:warcrafty/src/core/field_format.dart';

/// ScalingStatDistribution 格式字符串

/// ScalingStatDistribution 结构定义
const scalingStatDistribution = DbcStructureDefinition(
  name: 'ScalingStatDistribution',
  format: 'niiiiiiiiiiiiiiiiiiiii',
  fields: [
    FieldDefinition(index: 0, name: 'ID', description: 'ID', format: DbcFieldFormat.intType),
    FieldDefinition(index: 1, name: 'Stat1', description: '属性 1', format: DbcFieldFormat.intType),
    FieldDefinition(index: 2, name: 'Stat2', description: '属性 2', format: DbcFieldFormat.intType),
    FieldDefinition(index: 3, name: 'Stat3', description: '属性 3', format: DbcFieldFormat.intType),
    FieldDefinition(index: 4, name: 'Stat4', description: '属性 4', format: DbcFieldFormat.intType),
    FieldDefinition(index: 5, name: 'Stat5', description: '属性 5', format: DbcFieldFormat.intType),
    FieldDefinition(index: 6, name: 'Stat6', description: '属性 6', format: DbcFieldFormat.intType),
    FieldDefinition(index: 7, name: 'Stat7', description: '属性 7', format: DbcFieldFormat.intType),
    FieldDefinition(index: 8, name: 'Stat8', description: '属性 8', format: DbcFieldFormat.intType),
    FieldDefinition(index: 9, name: 'Stat9', description: '属性 9', format: DbcFieldFormat.intType),
    FieldDefinition(index: 10, name: 'Stat10', description: '属性 10', format: DbcFieldFormat.intType),
    FieldDefinition(index: 11, name: 'Stat11', description: '属性 11', format: DbcFieldFormat.intType),
    FieldDefinition(index: 12, name: 'Stat12', description: '属性 12', format: DbcFieldFormat.intType),
    FieldDefinition(index: 13, name: 'Stat13', description: '属性 13', format: DbcFieldFormat.intType),
    FieldDefinition(index: 14, name: 'Stat14', description: '属性 14', format: DbcFieldFormat.intType),
    FieldDefinition(index: 15, name: 'Stat15', description: '属性 15', format: DbcFieldFormat.intType),
    FieldDefinition(index: 16, name: 'Stat16', description: '属性 16', format: DbcFieldFormat.intType),
    FieldDefinition(index: 17, name: 'Stat17', description: '属性 17', format: DbcFieldFormat.intType),
    FieldDefinition(index: 18, name: 'Stat18', description: '属性 18', format: DbcFieldFormat.intType),
    FieldDefinition(index: 19, name: 'Stat19', description: '属性 19', format: DbcFieldFormat.intType),
    FieldDefinition(index: 20, name: 'Stat20', description: '属性 20', format: DbcFieldFormat.intType),
  ],
);
