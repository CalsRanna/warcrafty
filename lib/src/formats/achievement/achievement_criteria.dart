/// AchievementCriteria.dbc - 成就条件格式
library;

import '../base/field_definition.dart';
import '../base/structure_definition.dart';
import '../../core/field_format.dart';

/// AchievementCriteria 格式字符串
const String achievementCriteriaFormat = 'niiiiiiiixxxxxxxxxxxxxxxxxiiiix';

/// AchievementCriteria 结构定义
const DbcStructureDefinition achievementCriteria = DbcStructureDefinition(
  name: 'AchievementCriteria',
  format: achievementCriteriaFormat,
  fields: [
    FieldDefinition(index: 0, name: 'ID', description: '条件 ID', format: DbcFieldFormat.intType),
    FieldDefinition(index: 1, name: 'ReferredAchievement', description: '引用成就 ID', format: DbcFieldFormat.intType),
    FieldDefinition(index: 2, name: 'RequiredType', description: '需求类型', format: DbcFieldFormat.intType),
    FieldDefinition(index: 3, name: 'Requirement1', description: '需求 1', format: DbcFieldFormat.intType),
    FieldDefinition(index: 4, name: 'Requirement2', description: '需求 2', format: DbcFieldFormat.intType),
    FieldDefinition(index: 5, name: 'Requirement3', description: '需求 3', format: DbcFieldFormat.intType),
    FieldDefinition(index: 6, name: 'Requirement4', description: '需求 4', format: DbcFieldFormat.intType),
    FieldDefinition(index: 7, name: 'Requirement5', description: '需求 5', format: DbcFieldFormat.intType),
    FieldDefinition(index: 8, name: 'AdditionalRequirementType', description: '额外需求类型', format: DbcFieldFormat.intType),
    FieldDefinition(index: 9, name: 'AdditionalRequirementValue', description: '额外需求值', format: DbcFieldFormat.intType),
    FieldDefinition(index: 10, name: 'Flags', description: '标志', format: DbcFieldFormat.intType),
  ],
);
