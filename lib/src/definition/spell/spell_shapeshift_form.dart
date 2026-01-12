import 'package:warcrafty/src/definition/base/field_definition.dart';
import 'package:warcrafty/src/definition/base/structure_definition.dart';
import 'package:warcrafty/src/core/field_format.dart';

/// SpellShapeshiftForm 格式字符串

/// SpellShapeshiftForm 结构定义
const spellShapeshiftForm = DbcStructureDefinition(
  name: 'SpellShapeshiftForm',
  format: 'nxxxxxxxxxxxxxxxxxxiixiiixxiiiiiiii',
  fields: [
    FieldDefinition(index: 0, name: 'ID', description: 'ID', format: DbcFieldFormat.intType),
    FieldDefinition(index: 1, name: 'Name', description: '名称', format: DbcFieldFormat.na),
    FieldDefinition(index: 2, name: 'Unknown1', description: '未知1', format: DbcFieldFormat.intType),
    FieldDefinition(index: 3, name: 'Unknown2', description: '未知2', format: DbcFieldFormat.intType),
    FieldDefinition(index: 4, name: 'Unknown3', description: '未知3', format: DbcFieldFormat.intType),
    FieldDefinition(index: 5, name: 'Unknown4', description: '未知4', format: DbcFieldFormat.intType),
    FieldDefinition(index: 6, name: 'Unknown5', description: '未知5', format: DbcFieldFormat.intType),
    FieldDefinition(index: 7, name: 'Unknown6', description: '未知6', format: DbcFieldFormat.intType),
    FieldDefinition(index: 8, name: 'Unknown7', description: '未知7', format: DbcFieldFormat.intType),
    FieldDefinition(index: 9, name: 'Unknown8', description: '未知8', format: DbcFieldFormat.intType),
  ],
);
