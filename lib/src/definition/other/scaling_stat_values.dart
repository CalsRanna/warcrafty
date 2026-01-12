/// ScalingStatValues.dbc - 缩放属性值格式
library;

import '../base/field_definition.dart';
import '../base/structure_definition.dart';
import '../../core/field_format.dart';

/// ScalingStatValues 格式字符串
const String scalingStatValuesFormat = 'iniiiiiiiiiiiiiiiiiiiiii';

/// ScalingStatValues 结构定义
const DbcStructureDefinition scalingStatValues = DbcStructureDefinition(
  name: 'ScalingStatValues',
  format: scalingStatValuesFormat,
  fields: [
    FieldDefinition(index: 0, name: 'ID', description: 'ID', format: DbcFieldFormat.intType),
    FieldDefinition(index: 1, name: 'Unknown1', description: '未知1', format: DbcFieldFormat.intType),
    FieldDefinition(index: 2, name: 'StatMod1', description: '属性修正 1', format: DbcFieldFormat.intType),
    FieldDefinition(index: 3, name: 'StatMod2', description: '属性修正 2', format: DbcFieldFormat.intType),
    FieldDefinition(index: 4, name: 'StatMod3', description: '属性修正 3', format: DbcFieldFormat.intType),
    FieldDefinition(index: 5, name: 'StatMod4', description: '属性修正 4', format: DbcFieldFormat.intType),
    FieldDefinition(index: 6, name: 'StatMod5', description: '属性修正 5', format: DbcFieldFormat.intType),
    FieldDefinition(index: 7, name: 'StatMod6', description: '属性修正 6', format: DbcFieldFormat.intType),
    FieldDefinition(index: 8, name: 'StatMod7', description: '属性修正 7', format: DbcFieldFormat.intType),
    FieldDefinition(index: 9, name: 'StatMod8', description: '属性修正 8', format: DbcFieldFormat.intType),
    FieldDefinition(index: 10, name: 'StatMod9', description: '属性修正 9', format: DbcFieldFormat.intType),
    FieldDefinition(index: 11, name: 'StatMod10', description: '属性修正 10', format: DbcFieldFormat.intType),
    FieldDefinition(index: 12, name: 'Unknown2', description: '未知2', format: DbcFieldFormat.intType),
    FieldDefinition(index: 13, name: 'Unknown3', description: '未知3', format: DbcFieldFormat.intType),
    FieldDefinition(index: 14, name: 'Unknown4', description: '未知4', format: DbcFieldFormat.intType),
    FieldDefinition(index: 15, name: 'Unknown5', description: '未知5', format: DbcFieldFormat.intType),
    FieldDefinition(index: 16, name: 'Unknown6', description: '未知6', format: DbcFieldFormat.intType),
    FieldDefinition(index: 17, name: 'Unknown7', description: '未知7', format: DbcFieldFormat.intType),
    FieldDefinition(index: 18, name: 'Unknown8', description: '未知8', format: DbcFieldFormat.intType),
    FieldDefinition(index: 19, name: 'Unknown9', description: '未知9', format: DbcFieldFormat.intType),
    FieldDefinition(index: 20, name: 'Unknown10', description: '未知10', format: DbcFieldFormat.intType),
  ],
);
