import 'package:warcrafty/src/core/field_format.dart';
import 'package:warcrafty/src/definition/base/field_definition.dart';
import 'package:warcrafty/src/definition/base/structure_definition.dart';
import 'package:warcrafty/src/definition/common/locale_fields.dart';

/// CreatureFamily 结构定义
///
/// 格式字符串参考 AzerothCore DBCfmt.h:
/// char constexpr CreatureFamilyEntryfmt[] = "nfifiiiiixssssssssssssssssxx";
final creatureFamily = DbcStructureDefinition(
  name: 'CreatureFamily',
  format: 'nfifiiiiixssssssssssssssssxx',
  fields: [
    const FieldDefinition(index: 0, name: 'ID', description: '生物家族 ID', format: DbcFieldFormat.indexField),
    const FieldDefinition(index: 1, name: 'MinScale', description: '最小缩放', format: DbcFieldFormat.float),
    const FieldDefinition(index: 2, name: 'MinScaleLevel', description: '最小缩放等级', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 3, name: 'MaxScale', description: '最大缩放', format: DbcFieldFormat.float),
    const FieldDefinition(index: 4, name: 'MaxScaleLevel', description: '最大缩放等级', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 5, name: 'SkillLine0', description: '技能线 0', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 6, name: 'SkillLine1', description: '技能线 1', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 7, name: 'PetFoodMask', description: '宠物食物掩码', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 8, name: 'PetTalentType', description: '宠物天赋类型', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 9, name: 'CategoryEnumID', description: '类别枚举 ID (未使用)', format: DbcFieldFormat.na),
    // 名称字段 (10-25): 16 种语言
    ...createLocaleFields(10, 'Name', '家族名称'),
    // 未使用字段 (26-27): 2 个 x
    ...createUnusedFields(26, 2),
  ],
);
