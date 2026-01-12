import 'package:warcrafty/src/core/field_definition.dart';
import 'package:warcrafty/src/core/structure_definition.dart';
import 'package:warcrafty/src/core/field_format.dart';

/// SpellItemEnchantmentCondition 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
const spellItemEnchantmentCondition = DbcStructureDefinition(
  name: 'SpellItemEnchantmentCondition',
  format: 'nbbbbbiiiiibbbbbbbbbbiiiiibbbbb',
  fields: [
    FieldDefinition(index: 0, name: 'ID', description: 'ID', format: DbcFieldFormat.indexField),
    FieldDefinition(index: 1, name: 'Lt_operandType0', description: 'Lt_operandType 0', format: DbcFieldFormat.byte),
    FieldDefinition(index: 2, name: 'Lt_operandType1', description: 'Lt_operandType 1', format: DbcFieldFormat.byte),
    FieldDefinition(index: 3, name: 'Lt_operandType2', description: 'Lt_operandType 2', format: DbcFieldFormat.byte),
    FieldDefinition(index: 4, name: 'Lt_operandType3', description: 'Lt_operandType 3', format: DbcFieldFormat.byte),
    FieldDefinition(index: 5, name: 'Lt_operandType4', description: 'Lt_operandType 4', format: DbcFieldFormat.byte),
    FieldDefinition(index: 6, name: 'Lt_operand0', description: 'Lt_operand 0', format: DbcFieldFormat.intType),
    FieldDefinition(index: 7, name: 'Lt_operand1', description: 'Lt_operand 1', format: DbcFieldFormat.intType),
    FieldDefinition(index: 8, name: 'Lt_operand2', description: 'Lt_operand 2', format: DbcFieldFormat.intType),
    FieldDefinition(index: 9, name: 'Lt_operand3', description: 'Lt_operand 3', format: DbcFieldFormat.intType),
    FieldDefinition(index: 10, name: 'Lt_operand4', description: 'Lt_operand 4', format: DbcFieldFormat.intType),
    FieldDefinition(index: 11, name: 'Operator0', description: 'Operator 0', format: DbcFieldFormat.byte),
    FieldDefinition(index: 12, name: 'Operator1', description: 'Operator 1', format: DbcFieldFormat.byte),
    FieldDefinition(index: 13, name: 'Operator2', description: 'Operator 2', format: DbcFieldFormat.byte),
    FieldDefinition(index: 14, name: 'Operator3', description: 'Operator 3', format: DbcFieldFormat.byte),
    FieldDefinition(index: 15, name: 'Operator4', description: 'Operator 4', format: DbcFieldFormat.byte),
    FieldDefinition(index: 16, name: 'Rt_operandType0', description: 'Rt_operandType 0', format: DbcFieldFormat.byte),
    FieldDefinition(index: 17, name: 'Rt_operandType1', description: 'Rt_operandType 1', format: DbcFieldFormat.byte),
    FieldDefinition(index: 18, name: 'Rt_operandType2', description: 'Rt_operandType 2', format: DbcFieldFormat.byte),
    FieldDefinition(index: 19, name: 'Rt_operandType3', description: 'Rt_operandType 3', format: DbcFieldFormat.byte),
    FieldDefinition(index: 20, name: 'Rt_operandType4', description: 'Rt_operandType 4', format: DbcFieldFormat.byte),
    FieldDefinition(index: 21, name: 'Rt_operand0', description: 'Rt_operand 0', format: DbcFieldFormat.intType),
    FieldDefinition(index: 22, name: 'Rt_operand1', description: 'Rt_operand 1', format: DbcFieldFormat.intType),
    FieldDefinition(index: 23, name: 'Rt_operand2', description: 'Rt_operand 2', format: DbcFieldFormat.intType),
    FieldDefinition(index: 24, name: 'Rt_operand3', description: 'Rt_operand 3', format: DbcFieldFormat.intType),
    FieldDefinition(index: 25, name: 'Rt_operand4', description: 'Rt_operand 4', format: DbcFieldFormat.intType),
    FieldDefinition(index: 26, name: 'Logic0', description: 'Logic 0', format: DbcFieldFormat.byte),
    FieldDefinition(index: 27, name: 'Logic1', description: 'Logic 1', format: DbcFieldFormat.byte),
    FieldDefinition(index: 28, name: 'Logic2', description: 'Logic 2', format: DbcFieldFormat.byte),
    FieldDefinition(index: 29, name: 'Logic3', description: 'Logic 3', format: DbcFieldFormat.byte),
    FieldDefinition(index: 30, name: 'Logic4', description: 'Logic 4', format: DbcFieldFormat.byte),
  ],
);
