import 'package:warcrafty/src/definition/base/field_definition.dart';
import 'package:warcrafty/src/definition/base/structure_definition.dart';
import 'package:warcrafty/src/core/field_format.dart';

/// SkillRaceClassInfo 格式字符串

/// SkillRaceClassInfo 结构定义
const skillRaceClassInfo = DbcStructureDefinition(
  name: 'SkillRaceClassInfo',
  format: 'diiiixix',
  fields: [
    FieldDefinition(index: 0, name: 'SortValue', description: '排序值', format: DbcFieldFormat.sort),
    FieldDefinition(index: 1, name: 'SkillID', description: '技能 ID', format: DbcFieldFormat.intType),
    FieldDefinition(index: 2, name: 'RaceMask', description: '种族掩码', format: DbcFieldFormat.intType),
    FieldDefinition(index: 3, name: 'ClassMask', description: '职业掩码', format: DbcFieldFormat.intType),
    FieldDefinition(index: 4, name: 'Flags', description: '标志', format: DbcFieldFormat.intType),
    FieldDefinition(index: 5, name: 'Unused5', description: '未使用', format: DbcFieldFormat.na),
    FieldDefinition(index: 6, name: 'SkillTierID', description: '技能等级 ID', format: DbcFieldFormat.intType),
    FieldDefinition(index: 7, name: 'SkillCostIndex', description: '技能花费索引', format: DbcFieldFormat.intType),
  ],
);
