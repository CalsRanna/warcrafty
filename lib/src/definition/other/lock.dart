import 'package:warcrafty/src/definition/base/field_definition.dart';
import 'package:warcrafty/src/definition/base/structure_definition.dart';
import 'package:warcrafty/src/core/field_format.dart';

/// Lock 格式字符串

/// Lock 结构定义
const lock = DbcStructureDefinition(
  name: 'Lock',
  format: 'niiiiiiiiiiiiiiiiiiiiiiiixxxxxxxx',
  fields: [
    FieldDefinition(index: 0, name: 'ID', description: 'ID', format: DbcFieldFormat.intType),
    FieldDefinition(index: 1, name: 'Type1', description: '类型 1', format: DbcFieldFormat.intType),
    FieldDefinition(index: 2, name: 'Type2', description: '类型 2', format: DbcFieldFormat.intType),
    FieldDefinition(index: 3, name: 'Type3', description: '类型 3', format: DbcFieldFormat.intType),
    FieldDefinition(index: 4, name: 'Type4', description: '类型 4', format: DbcFieldFormat.intType),
    FieldDefinition(index: 5, name: 'Type5', description: '类型 5', format: DbcFieldFormat.intType),
    FieldDefinition(index: 6, name: 'Skill1', description: '技能 1', format: DbcFieldFormat.intType),
    FieldDefinition(index: 7, name: 'Skill2', description: '技能 2', format: DbcFieldFormat.intType),
    FieldDefinition(index: 8, name: 'Skill3', description: '技能 3', format: DbcFieldFormat.intType),
    FieldDefinition(index: 9, name: 'Skill4', description: '技能 4', format: DbcFieldFormat.intType),
    FieldDefinition(index: 10, name: 'Skill5', description: '技能 5', format: DbcFieldFormat.intType),
    FieldDefinition(index: 11, name: 'Action1', description: '动作 1', format: DbcFieldFormat.intType),
    FieldDefinition(index: 12, name: 'Action2', description: '动作 2', format: DbcFieldFormat.intType),
    FieldDefinition(index: 13, name: 'Action3', description: '动作 3', format: DbcFieldFormat.intType),
    FieldDefinition(index: 14, name: 'Action4', description: '动作 4', format: DbcFieldFormat.intType),
    FieldDefinition(index: 15, name: 'Action5', description: '动作 5', format: DbcFieldFormat.intType),
  ],
);
