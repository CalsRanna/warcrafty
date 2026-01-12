import 'package:warcrafty/src/core/field_definition.dart';
import 'package:warcrafty/src/core/structure_definition.dart';
import 'package:warcrafty/src/core/field_format.dart';

/// ObjectEffectModifier 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
const objectEffectModifier = DbcStructureDefinition(
  name: 'ObjectEffectModifier',
  format: 'niiiffff',
  fields: [
    FieldDefinition(index: 0, name: 'ID', description: 'ID', format: DbcFieldFormat.indexField),
    FieldDefinition(index: 1, name: 'InputType', description: 'InputType', format: DbcFieldFormat.intType),
    FieldDefinition(index: 2, name: 'MapType', description: 'MapType', format: DbcFieldFormat.intType),
    FieldDefinition(index: 3, name: 'OutputType', description: 'OutputType', format: DbcFieldFormat.intType),
    FieldDefinition(index: 4, name: 'Param0', description: 'Param 0', format: DbcFieldFormat.float),
    FieldDefinition(index: 5, name: 'Param1', description: 'Param 1', format: DbcFieldFormat.float),
    FieldDefinition(index: 6, name: 'Param2', description: 'Param 2', format: DbcFieldFormat.float),
    FieldDefinition(index: 7, name: 'Param3', description: 'Param 3', format: DbcFieldFormat.float),
  ],
);
