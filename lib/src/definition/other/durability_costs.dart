import 'package:warcrafty/src/definition/base/field_definition.dart';
import 'package:warcrafty/src/definition/base/structure_definition.dart';
import 'package:warcrafty/src/core/field_format.dart';

/// DurabilityCosts 格式字符串

/// DurabilityCosts 结构定义
const durabilityCosts = DbcStructureDefinition(
  name: 'DurabilityCosts',
  format: 'niiiiiiiiiiiiiiiiiiiiiiiiiiiii',
  fields: [
    FieldDefinition(index: 0, name: 'ItemLevel', description: '物品等级', format: DbcFieldFormat.intType),
    FieldDefinition(index: 1, name: 'Multiplier0', description: '乘数 0', format: DbcFieldFormat.intType),
    FieldDefinition(index: 2, name: 'Multiplier1', description: '乘数 1', format: DbcFieldFormat.intType),
    FieldDefinition(index: 3, name: 'Multiplier2', description: '乘数 2', format: DbcFieldFormat.intType),
    FieldDefinition(index: 4, name: 'Multiplier3', description: '乘数 3', format: DbcFieldFormat.intType),
    FieldDefinition(index: 5, name: 'Multiplier4', description: '乘数 4', format: DbcFieldFormat.intType),
    FieldDefinition(index: 6, name: 'Multiplier5', description: '乘数 5', format: DbcFieldFormat.intType),
    FieldDefinition(index: 7, name: 'Multiplier6', description: '乘数 6', format: DbcFieldFormat.intType),
    FieldDefinition(index: 8, name: 'Multiplier7', description: '乘数 7', format: DbcFieldFormat.intType),
    FieldDefinition(index: 9, name: 'Multiplier8', description: '乘数 8', format: DbcFieldFormat.intType),
    FieldDefinition(index: 10, name: 'Multiplier9', description: '乘数 9', format: DbcFieldFormat.intType),
    FieldDefinition(index: 11, name: 'Multiplier10', description: '乘数 10', format: DbcFieldFormat.intType),
    FieldDefinition(index: 12, name: 'Multiplier11', description: '乘数 11', format: DbcFieldFormat.intType),
    FieldDefinition(index: 13, name: 'Multiplier12', description: '乘数 12', format: DbcFieldFormat.intType),
    FieldDefinition(index: 14, name: 'Multiplier13', description: '乘数 13', format: DbcFieldFormat.intType),
    FieldDefinition(index: 15, name: 'Multiplier14', description: '乘数 14', format: DbcFieldFormat.intType),
    FieldDefinition(index: 16, name: 'Multiplier15', description: '乘数 15', format: DbcFieldFormat.intType),
    FieldDefinition(index: 17, name: 'Multiplier16', description: '乘数 16', format: DbcFieldFormat.intType),
    FieldDefinition(index: 18, name: 'Multiplier17', description: '乘数 17', format: DbcFieldFormat.intType),
    FieldDefinition(index: 19, name: 'Multiplier18', description: '乘数 18', format: DbcFieldFormat.intType),
    FieldDefinition(index: 20, name: 'Multiplier19', description: '乘数 19', format: DbcFieldFormat.intType),
    FieldDefinition(index: 21, name: 'Multiplier20', description: '乘数 20', format: DbcFieldFormat.intType),
    FieldDefinition(index: 22, name: 'Multiplier21', description: '乘数 21', format: DbcFieldFormat.intType),
    FieldDefinition(index: 23, name: 'Multiplier22', description: '乘数 22', format: DbcFieldFormat.intType),
    FieldDefinition(index: 24, name: 'Multiplier23', description: '乘数 23', format: DbcFieldFormat.intType),
    FieldDefinition(index: 25, name: 'Multiplier24', description: '乘数 24', format: DbcFieldFormat.intType),
    FieldDefinition(index: 26, name: 'Multiplier25', description: '乘数 25', format: DbcFieldFormat.intType),
    FieldDefinition(index: 27, name: 'Multiplier26', description: '乘数 26', format: DbcFieldFormat.intType),
    FieldDefinition(index: 28, name: 'Multiplier27', description: '乘数 27', format: DbcFieldFormat.intType),
    FieldDefinition(index: 29, name: 'Multiplier28', description: '乘数 28', format: DbcFieldFormat.intType),
  ],
);
