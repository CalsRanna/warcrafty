import 'package:warcrafty/src/core/field_format.dart';
import 'package:warcrafty/src/definition/base/field_definition.dart';
import 'package:warcrafty/src/definition/base/structure_definition.dart';
import 'package:warcrafty/src/definition/common/locale_fields.dart';

/// Spell 结构定义
///
/// 格式字符串参考 AzerothCore DBCfmt.h:
/// char constexpr SpellEntryfmt[] = "niiiiiiiiiiiixixiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiifxiiiiiiiiiiiiiiiiiiiiiiiiiiiifffiiiiiiiiiiiiiiiiiiiiifffiiiiiiiiiiiiiiifffiiiiiiiiiiiiiissssssssssssssssxssssssssssssssssxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxiiiiiiiiiiixfffxxxiiiiixxfffxx";
///
/// 注意: 这是 WoW 3.3.5a 中最复杂的 DBC 结构，共 234 个字段
final spell = DbcStructureDefinition(
  name: 'Spell',
  format: 'niiiiiiiiiiiixixiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiifxiiiiiiiiiiiiiiiiiiiiiiiiiiiifffiiiiiiiiiiiiiiiiiiiiifffiiiiiiiiiiiiiiifffiiiiiiiiiiiiiissssssssssssssssxssssssssssssssssxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxiiiiiiiiiiixfffxxxiiiiixxfffxx',
  fields: [
    // ===== 基本属性 (0-11) =====
    const FieldDefinition(index: 0, name: 'ID', description: '法术 ID', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 1, name: 'Category', description: '类别', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 2, name: 'Dispel', description: '驱散类型', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 3, name: 'Mechanic', description: '机制', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 4, name: 'Attributes', description: '属性', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 5, name: 'AttributesEx', description: '扩展属性', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 6, name: 'AttributesEx2', description: '扩展属性 2', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 7, name: 'AttributesEx3', description: '扩展属性 3', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 8, name: 'AttributesEx4', description: '扩展属性 4', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 9, name: 'AttributesEx5', description: '扩展属性 5', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 10, name: 'AttributesEx6', description: '扩展属性 6', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 11, name: 'AttributesEx7', description: '扩展属性 7', format: DbcFieldFormat.intType),

    // ===== 姿态与目标 (12-27) =====
    const FieldDefinition(index: 12, name: 'Stances', description: '姿态掩码', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 13, name: 'StancesHigh', description: '姿态掩码高位 (未使用)', format: DbcFieldFormat.na),
    const FieldDefinition(index: 14, name: 'StancesNot', description: '排除姿态掩码', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 15, name: 'StancesNotHigh', description: '排除姿态掩码高位 (未使用)', format: DbcFieldFormat.na),
    const FieldDefinition(index: 16, name: 'Targets', description: '目标类型', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 17, name: 'TargetCreatureType', description: '目标生物类型掩码', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 18, name: 'RequiresSpellFocus', description: '需求法术焦点对象', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 19, name: 'FacingCasterFlags', description: '面向施法者标志', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 20, name: 'CasterAuraState', description: '施法者光环状态', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 21, name: 'TargetAuraState', description: '目标光环状态', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 22, name: 'CasterAuraStateNot', description: '排除施法者光环状态', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 23, name: 'TargetAuraStateNot', description: '排除目标光环状态', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 24, name: 'CasterAuraSpell', description: '需求施法者光环法术', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 25, name: 'TargetAuraSpell', description: '需求目标光环法术', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 26, name: 'ExcludeCasterAuraSpell', description: '排除施法者光环法术', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 27, name: 'ExcludeTargetAuraSpell', description: '排除目标光环法术', format: DbcFieldFormat.intType),

    // ===== 时间与触发 (28-45) =====
    const FieldDefinition(index: 28, name: 'CastingTimeIndex', description: '施法时间索引', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 29, name: 'RecoveryTime', description: '冷却时间 (毫秒)', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 30, name: 'CategoryRecoveryTime', description: '类别冷却时间 (毫秒)', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 31, name: 'InterruptFlags', description: '中断标志', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 32, name: 'AuraInterruptFlags', description: '光环中断标志', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 33, name: 'ChannelInterruptFlags', description: '引导中断标志', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 34, name: 'ProcFlags', description: '触发标志', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 35, name: 'ProcChance', description: '触发概率', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 36, name: 'ProcCharges', description: '触发次数', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 37, name: 'MaxLevel', description: '最大有效等级', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 38, name: 'BaseLevel', description: '基础等级', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 39, name: 'SpellLevel', description: '法术等级', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 40, name: 'DurationIndex', description: '持续时间索引', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 41, name: 'PowerType', description: '能量类型', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 42, name: 'ManaCost', description: '法力消耗', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 43, name: 'ManaCostPerLevel', description: '每级法力消耗', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 44, name: 'ManaPerSecond', description: '每秒法力消耗', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 45, name: 'ManaPerSecondPerLevel', description: '每级每秒法力消耗', format: DbcFieldFormat.intType),

    // ===== 范围与速度 (46-49) =====
    const FieldDefinition(index: 46, name: 'RangeIndex', description: '范围索引', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 47, name: 'Speed', description: '飞行速度', format: DbcFieldFormat.float),
    const FieldDefinition(index: 48, name: 'ModalNextSpell', description: '模态后续法术 (未使用)', format: DbcFieldFormat.na),
    const FieldDefinition(index: 49, name: 'StackAmount', description: '堆叠数量', format: DbcFieldFormat.intType),

    // ===== 图腾 (50-51) =====
    const FieldDefinition(index: 50, name: 'Totem0', description: '图腾物品 0', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 51, name: 'Totem1', description: '图腾物品 1', format: DbcFieldFormat.intType),

    // ===== 试剂 (52-67) =====
    ...createIntFields(52, 8, 'Reagent', '试剂物品 ID'),
    ...createIntFields(60, 8, 'ReagentCount', '试剂数量'),

    // ===== 装备需求 (68-70) =====
    const FieldDefinition(index: 68, name: 'EquippedItemClass', description: '需求物品类别', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 69, name: 'EquippedItemSubClassMask', description: '需求物品子类别掩码', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 70, name: 'EquippedItemInventoryTypeMask', description: '需求背包类型掩码', format: DbcFieldFormat.intType),

    // ===== 效果 (71-130) =====
    // 效果类型 (71-73)
    ...createIntFields(71, 3, 'Effect', '效果类型'),
    // 效果骰子面数 (74-76)
    ...createIntFields(74, 3, 'EffectDieSides', '效果骰子面数'),
    // 效果实际每级加成 (77-79)
    const FieldDefinition(index: 77, name: 'EffectRealPointsPerLevel0', description: '效果 0 每级实际加成', format: DbcFieldFormat.float),
    const FieldDefinition(index: 78, name: 'EffectRealPointsPerLevel1', description: '效果 1 每级实际加成', format: DbcFieldFormat.float),
    const FieldDefinition(index: 79, name: 'EffectRealPointsPerLevel2', description: '效果 2 每级实际加成', format: DbcFieldFormat.float),
    // 效果基础点数 (80-82)
    ...createIntFields(80, 3, 'EffectBasePoints', '效果基础点数'),
    // 效果机制 (83-85)
    ...createIntFields(83, 3, 'EffectMechanic', '效果机制'),
    // 效果隐式目标 A (86-88)
    ...createIntFields(86, 3, 'EffectImplicitTargetA', '效果隐式目标 A'),
    // 效果隐式目标 B (89-91)
    ...createIntFields(89, 3, 'EffectImplicitTargetB', '效果隐式目标 B'),
    // 效果半径索引 (92-94)
    ...createIntFields(92, 3, 'EffectRadiusIndex', '效果半径索引'),
    // 效果光环类型 (95-97)
    ...createIntFields(95, 3, 'EffectApplyAuraName', '效果光环类型'),
    // 效果幅度 (98-100)
    ...createIntFields(98, 3, 'EffectAmplitude', '效果幅度'),
    // 效果多重数值 (101-103)
    const FieldDefinition(index: 101, name: 'EffectMultipleValue0', description: '效果 0 多重数值', format: DbcFieldFormat.float),
    const FieldDefinition(index: 102, name: 'EffectMultipleValue1', description: '效果 1 多重数值', format: DbcFieldFormat.float),
    const FieldDefinition(index: 103, name: 'EffectMultipleValue2', description: '效果 2 多重数值', format: DbcFieldFormat.float),
    // 效果链式目标 (104-106)
    ...createIntFields(104, 3, 'EffectChainTarget', '效果链式目标数'),
    // 效果物品类型 (107-109)
    ...createIntFields(107, 3, 'EffectItemType', '效果物品类型'),
    // 效果杂项值 A (110-112)
    ...createIntFields(110, 3, 'EffectMiscValue', '效果杂项值 A'),
    // 效果杂项值 B (113-115)
    ...createIntFields(113, 3, 'EffectMiscValueB', '效果杂项值 B'),
    // 效果触发法术 (116-118)
    ...createIntFields(116, 3, 'EffectTriggerSpell', '效果触发法术'),
    // 效果每组合点数加成 (119-121)
    const FieldDefinition(index: 119, name: 'EffectPointsPerComboPoint0', description: '效果 0 每连击点加成', format: DbcFieldFormat.float),
    const FieldDefinition(index: 120, name: 'EffectPointsPerComboPoint1', description: '效果 1 每连击点加成', format: DbcFieldFormat.float),
    const FieldDefinition(index: 121, name: 'EffectPointsPerComboPoint2', description: '效果 2 每连击点加成', format: DbcFieldFormat.float),
    // 效果法术类型掩码 (122-130)
    ...createIntFields(122, 3, 'EffectSpellClassMaskA', '效果法术类型掩码 A'),
    ...createIntFields(125, 3, 'EffectSpellClassMaskB', '效果法术类型掩码 B'),
    ...createIntFields(128, 3, 'EffectSpellClassMaskC', '效果法术类型掩码 C'),

    // ===== 视觉效果 (131-135) =====
    const FieldDefinition(index: 131, name: 'SpellVisual0', description: '视觉效果 0', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 132, name: 'SpellVisual1', description: '视觉效果 1', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 133, name: 'SpellIconID', description: '法术图标 ID', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 134, name: 'ActiveIconID', description: '激活图标 ID', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 135, name: 'SpellPriority', description: '法术优先级', format: DbcFieldFormat.intType),

    // ===== 法术名称 (136-151): 16 种语言 =====
    ...createLocaleFields(136, 'SpellName', '法术名称'),
    const FieldDefinition(index: 152, name: 'SpellName_Flags', description: '名称标志 (未使用)', format: DbcFieldFormat.na),

    // ===== 等级名称 (153-168): 16 种语言 =====
    ...createLocaleFields(153, 'Rank', '等级名称'),
    const FieldDefinition(index: 169, name: 'Rank_Flags', description: '等级标志 (未使用)', format: DbcFieldFormat.na),

    // ===== 描述 (170-185): 16 种语言 (未使用) =====
    ...createUnusedFields(170, 16, baseName: 'Description'),
    const FieldDefinition(index: 186, name: 'Description_Flags', description: '描述标志 (未使用)', format: DbcFieldFormat.na),

    // ===== 提示 (187-202): 16 种语言 (未使用) =====
    ...createUnusedFields(187, 16, baseName: 'ToolTip'),
    const FieldDefinition(index: 203, name: 'ToolTip_Flags', description: '提示标志 (未使用)', format: DbcFieldFormat.na),

    // ===== 资源消耗 (204-214) =====
    const FieldDefinition(index: 204, name: 'ManaCostPercentage', description: '法力消耗百分比', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 205, name: 'StartRecoveryCategory', description: '开始恢复类别', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 206, name: 'StartRecoveryTime', description: '开始恢复时间', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 207, name: 'MaxTargetLevel', description: '最大目标等级', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 208, name: 'SpellFamilyName', description: '法术族名', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 209, name: 'SpellFamilyFlags0', description: '法术族标志 0', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 210, name: 'SpellFamilyFlags1', description: '法术族标志 1', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 211, name: 'SpellFamilyFlags2', description: '法术族标志 2', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 212, name: 'MaxAffectedTargets', description: '最大影响目标数', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 213, name: 'DmgClass', description: '伤害类型', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 214, name: 'PreventionType', description: '防御类型', format: DbcFieldFormat.intType),

    // ===== 其他属性 (215-233) =====
    const FieldDefinition(index: 215, name: 'StanceBarOrder', description: '姿态栏顺序 (未使用)', format: DbcFieldFormat.na),
    // 效果伤害乘数 (216-218)
    const FieldDefinition(index: 216, name: 'EffectDamageMultiplier0', description: '效果 0 伤害乘数', format: DbcFieldFormat.float),
    const FieldDefinition(index: 217, name: 'EffectDamageMultiplier1', description: '效果 1 伤害乘数', format: DbcFieldFormat.float),
    const FieldDefinition(index: 218, name: 'EffectDamageMultiplier2', description: '效果 2 伤害乘数', format: DbcFieldFormat.float),
    // 未使用字段 (219-221)
    ...createUnusedFields(219, 3, baseName: 'MinFactionID'),
    // 需求区域 (222)
    const FieldDefinition(index: 222, name: 'RequiredAreasID', description: '需求区域 ID', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 223, name: 'SchoolMask', description: '法术学派掩码', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 224, name: 'RuneCostID', description: '符文消耗 ID', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 225, name: 'SpellMissileID', description: '法术飞弹 ID (未使用)', format: DbcFieldFormat.na),
    const FieldDefinition(index: 226, name: 'PowerDisplayID', description: '能量显示 ID', format: DbcFieldFormat.intType),
    // 效果加成系数 (227-229)
    const FieldDefinition(index: 227, name: 'EffectBonusMultiplier0', description: '效果 0 加成乘数', format: DbcFieldFormat.float),
    const FieldDefinition(index: 228, name: 'EffectBonusMultiplier1', description: '效果 1 加成乘数', format: DbcFieldFormat.float),
    const FieldDefinition(index: 229, name: 'EffectBonusMultiplier2', description: '效果 2 加成乘数', format: DbcFieldFormat.float),
    // 未使用字段 (230-231)
    const FieldDefinition(index: 230, name: 'SpellDescriptionVariable', description: '描述变量 (未使用)', format: DbcFieldFormat.na),
    const FieldDefinition(index: 231, name: 'SpellDifficultyID', description: '难度 ID', format: DbcFieldFormat.intType),
  ],
);
