import 'package:warcrafty/src/core/field_format.dart';
import 'package:warcrafty/src/definition/base/field_definition.dart';
import 'package:warcrafty/src/definition/base/structure_definition.dart';
import 'package:warcrafty/src/definition/common/locale_fields.dart';

/// SkillLine 结构定义
///
/// 格式字符串参考 AzerothCore DBCfmt.h:
/// char constexpr SkillLineEntryfmt[] = "nixssssssssssssssssxxxxxxxxxxxxxxxxxxixxxxxxxxxxxxxxxxxi";
final skillLine = DbcStructureDefinition(
  name: 'SkillLine',
  format: 'nixssssssssssssssssxxxxxxxxxxxxxxxxxxixxxxxxxxxxxxxxxxxi',
  fields: [
    const FieldDefinition(index: 0, name: 'ID', description: '技能线 ID', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 1, name: 'CategoryID', description: '类别 ID', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 2, name: 'SkillCostID', description: '技能消耗 ID (未使用)', format: DbcFieldFormat.na),
    // 名称字段 (3-18): 16 种语言
    ...createLocaleFields(3, 'Name', '技能名称'),
    const FieldDefinition(index: 19, name: 'Name_Flags', description: '名称标志 (未使用)', format: DbcFieldFormat.na),
    // 描述字段 (20-35): 16 种语言 (未使用)
    ...createUnusedFields(20, 16, baseName: 'Description'),
    const FieldDefinition(index: 36, name: 'SpellIconID', description: '法术图标 ID', format: DbcFieldFormat.intType),
    // 可选动词字段 (37-52): 16 种语言 (未使用)
    ...createUnusedFields(37, 16, baseName: 'AlternateVerb'),
    const FieldDefinition(index: 53, name: 'AlternateVerb_Flags', description: '可选动词标志 (未使用)', format: DbcFieldFormat.na),
    const FieldDefinition(index: 54, name: 'CanLink', description: '是否可以链接 (专业技能有配方)', format: DbcFieldFormat.intType),
  ],
);
