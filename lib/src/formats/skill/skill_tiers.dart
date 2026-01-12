/// SkillTiers.dbc - 技能等级格式
library;

import '../base/field_definition.dart';
import '../base/structure_definition.dart';
import '../../core/field_format.dart';

/// SkillTiers 格式字符串
const String skillTiersFormat = 'nxxxxxxxxxxxxxxxxiiiiiiiiiiiiiiii';

/// SkillTiers 结构定义
const DbcStructureDefinition skillTiers = DbcStructureDefinition(
  name: 'SkillTiers',
  format: skillTiersFormat,
  fields: [
    FieldDefinition(index: 0, name: 'ID', description: 'ID', format: DbcFieldFormat.intType),
    FieldDefinition(index: 1, name: 'Unknown1', description: '未知1', format: DbcFieldFormat.na),
    FieldDefinition(index: 2, name: 'Skill1', description: '技能 1', format: DbcFieldFormat.intType),
    FieldDefinition(index: 3, name: 'Skill2', description: '技能 2', format: DbcFieldFormat.intType),
    FieldDefinition(index: 4, name: 'Skill3', description: '技能 3', format: DbcFieldFormat.intType),
    FieldDefinition(index: 5, name: 'Skill4', description: '技能 4', format: DbcFieldFormat.intType),
    FieldDefinition(index: 6, name: 'Skill5', description: '技能 5', format: DbcFieldFormat.intType),
    FieldDefinition(index: 7, name: 'Skill6', description: '技能 6', format: DbcFieldFormat.intType),
    FieldDefinition(index: 8, name: 'Skill7', description: '技能 7', format: DbcFieldFormat.intType),
    FieldDefinition(index: 9, name: 'Skill8', description: '技能 8', format: DbcFieldFormat.intType),
    FieldDefinition(index: 10, name: 'Skill9', description: '技能 9', format: DbcFieldFormat.intType),
    FieldDefinition(index: 11, name: 'Skill10', description: '技能 10', format: DbcFieldFormat.intType),
    FieldDefinition(index: 12, name: 'Skill11', description: '技能 11', format: DbcFieldFormat.intType),
    FieldDefinition(index: 13, name: 'Skill12', description: '技能 12', format: DbcFieldFormat.intType),
  ],
);
