import 'package:warcrafty/src/core/field_format.dart';
import 'package:warcrafty/src/definition/base/field_definition.dart';
import 'package:warcrafty/src/definition/base/structure_definition.dart';
import 'package:warcrafty/src/definition/common/locale_fields.dart';

/// Achievement 结构定义
///
/// 格式字符串参考 AzerothCore DBCfmt.h:
/// char constexpr Achievementfmt[] = "niixssssssssssssssssxxxxxxxxxxxxxxxxxxiixixxxxxxxxxxxxxxxxxxii";
final achievement = DbcStructureDefinition(
  name: 'Achievement',
  format: 'niixssssssssssssssssxxxxxxxxxxxxxxxxxxiixixxxxxxxxxxxxxxxxxxii',
  fields: [
    const FieldDefinition(
      index: 0,
      name: 'ID',
      description: '成就 ID',
      format: DbcFieldFormat.indexField,
    ),
    const FieldDefinition(
      index: 1,
      name: 'RequiredFaction',
      description: '需求阵营 (-1=所有, 0=部落, 1=联盟)',
      format: DbcFieldFormat.intType,
    ),
    const FieldDefinition(
      index: 2,
      name: 'MapID',
      description: '地图 ID (-1=无)',
      format: DbcFieldFormat.intType,
    ),
    const FieldDefinition(
      index: 3,
      name: 'ParentAchievement',
      description: '父成就 ID (未使用)',
      format: DbcFieldFormat.na,
    ),
    // 名称字段 (4-19): 16 种语言
    ...createLocaleFields(4, 'Name', '成就名称'),
    // 未使用字段 (20-37): 18 个 x
    ...createUnusedFields(20, 18),
    const FieldDefinition(
      index: 38,
      name: 'CategoryID',
      description: '类别 ID',
      format: DbcFieldFormat.intType,
    ),
    const FieldDefinition(
      index: 39,
      name: 'Points',
      description: '成就点数',
      format: DbcFieldFormat.intType,
    ),
    const FieldDefinition(
      index: 40,
      name: 'OrderInCategory',
      description: '类别内排序 (未使用)',
      format: DbcFieldFormat.na,
    ),
    const FieldDefinition(
      index: 41,
      name: 'Flags',
      description: '成就标志',
      format: DbcFieldFormat.intType,
    ),
    const FieldDefinition(
      index: 42,
      name: 'Icon',
      description: '图标 (未使用)',
      format: DbcFieldFormat.na,
    ),
    // 未使用字段 (43-60): 18 个 x (标题奖励字段)
    ...createUnusedFields(43, 18),
    const FieldDefinition(
      index: 61,
      name: 'Count',
      description: '需求计数',
      format: DbcFieldFormat.intType,
    ),
    const FieldDefinition(
      index: 62,
      name: 'RefAchievement',
      description: '引用成就 ID',
      format: DbcFieldFormat.intType,
    ),
  ],
);
