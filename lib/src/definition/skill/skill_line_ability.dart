import 'package:warcrafty/src/definition/base/field_definition.dart';
import 'package:warcrafty/src/definition/base/structure_definition.dart';
import 'package:warcrafty/src/core/field_format.dart';

/// SkillLineAbility 格式字符串

/// SkillLineAbility 结构定义
const skillLineAbility = DbcStructureDefinition(
  name: 'SkillLineAbility',
  format: 'niiiixxiiiiixx',
  fields: [
    FieldDefinition(index: 0, name: 'ID', description: '技能线能力 ID', format: DbcFieldFormat.intType),
    FieldDefinition(index: 1, name: 'SkillLine', description: '技能线 ID', format: DbcFieldFormat.intType),
    FieldDefinition(index: 2, name: 'Spell', description: '法术 ID', format: DbcFieldFormat.intType),
    FieldDefinition(index: 3, name: 'RaceMask', description: '种族掩码', format: DbcFieldFormat.intType),
    FieldDefinition(index: 4, name: 'ClassMask', description: '职业掩码', format: DbcFieldFormat.intType),
    FieldDefinition(index: 5, name: 'ExcludeRace', description: '排除种族', format: DbcFieldFormat.intType),
    FieldDefinition(index: 6, name: 'ExcludeClass', description: '排除职业', format: DbcFieldFormat.intType),
    FieldDefinition(index: 7, name: 'MinSkillLineRank', description: '最小技能线等级', format: DbcFieldFormat.intType),
    FieldDefinition(index: 8, name: 'SupercededBySpell', description: '替代法术 ID', format: DbcFieldFormat.intType),
    FieldDefinition(index: 9, name: 'AcquireMethod', description: '获取方式', format: DbcFieldFormat.intType),
    FieldDefinition(index: 10, name: 'TrivialSkillLineRankHigh', description: '简单技能线等级上限', format: DbcFieldFormat.intType),
    FieldDefinition(index: 11, name: 'TrivialSkillLineRankLow', description: '简单技能线等级下限', format: DbcFieldFormat.intType),
  ],
);
