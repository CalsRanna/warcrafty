import 'base/structure_definition.dart';

// 成就
import 'achievement/achievement.dart' as structure_achievement;
import 'achievement/achievement_category.dart'
    as structure_achievement_category;
import 'achievement/achievement_criteria.dart'
    as structure_achievement_criteria;

// 角色
import 'character/chr_races.dart' as structure_chr_races;
import 'character/chr_classes.dart' as structure_chr_classes;
import 'character/char_start_outfit.dart' as structure_char_start_outfit;
import 'character/char_titles.dart' as structure_char_titles;
import 'character/chat_channels.dart' as structure_chat_channels;
import 'character/talent.dart' as structure_talent;
import 'character/talent_tab.dart' as structure_talent_tab;

// 生物
import 'creature/creature_family.dart' as structure_creature_family;
import 'creature/creature_display_info.dart' as structure_creature_display_info;
import 'creature/creature_display_info_extra.dart'
    as structure_creature_display_info_extra;
import 'creature/creature_model_data.dart' as structure_creature_model_data;
import 'creature/creature_spell_data.dart' as structure_creature_spell_data;
import 'creature/creature_type.dart' as structure_creature_type;

// 派系
import 'faction/faction.dart' as structure_faction;
import 'faction/faction_template.dart' as structure_faction_template;

// 游戏对象
import 'gameobject/game_object_display_info.dart'
    as structure_game_object_display_info;

// 物品
import 'item/item.dart' as structure_item;
import 'item/item_set.dart' as structure_item_set;
import 'item/item_extended_cost.dart' as structure_item_extended_cost;
import 'item/item_bag_family.dart' as structure_item_bag_family;
import 'item/item_display_template.dart' as structure_item_display_template;
import 'item/item_limit_category.dart' as structure_item_limit_category;
import 'item/item_random_properties.dart' as structure_item_random_properties;
import 'item/item_random_suffix.dart' as structure_item_random_suffix;
import 'item/gem_properties.dart' as structure_gem_properties;

// 地图
import 'map/map.dart' as structure_map_entry;
import 'map/area_table.dart' as structure_area_table;
import 'map/area_group.dart' as structure_area_group;
import 'map/dungeon_encounter.dart' as structure_dungeon_encounter;
import 'map/map_difficulty.dart' as structure_map_difficulty;

// 任务
import 'quest/quest_sort.dart' as structure_quest_sort;
import 'quest/quest_xp.dart' as structure_quest_xp;
import 'quest/quest_faction_reward.dart' as structure_quest_faction_reward;

// 技能
import 'skill/skill_line.dart' as structure_skill_line;
import 'skill/skill_line_ability.dart' as structure_skill_line_ability;
import 'skill/skill_race_class_info.dart' as structure_skill_race_class_info;
import 'skill/skill_tiers.dart' as structure_skill_tiers;

// 法术
import 'spell/spell.dart' as structure_spell;
import 'spell/spell_duration.dart' as structure_spell_duration;
import 'spell/spell_range.dart' as structure_spell_range;
import 'spell/spell_cast_time.dart' as structure_spell_cast_time;
import 'spell/spell_category.dart' as structure_spell_category;
import 'spell/spell_difficulty.dart' as structure_spell_difficulty;
import 'spell/spell_focus_object.dart' as structure_spell_focus_object;
import 'spell/spell_radius.dart' as structure_spell_radius;
import 'spell/spell_rune_cost.dart' as structure_spell_rune_cost;
import 'spell/spell_shapeshift_form.dart' as structure_spell_shapeshift_form;
import 'spell/spell_visual.dart' as structure_spell_visual;
import 'spell/glyph_properties.dart' as structure_glyph_properties;
import 'spell/glyph_slot.dart' as structure_glyph_slot;

// GT (游戏数据表)
import 'gt/gt_barber_shop_cost_base.dart'
    as structure_gt_barber_shop_cost_base;
import 'gt/gt_combat_ratings.dart' as structure_gt_combat_ratings;
import 'gt/gt_chance_to_melee_crit_base.dart'
    as structure_gt_chance_to_melee_crit_base;
import 'gt/gt_chance_to_melee_crit.dart' as structure_gt_chance_to_melee_crit;
import 'gt/gt_chance_to_spell_crit_base.dart'
    as structure_gt_chance_to_spell_crit_base;
import 'gt/gt_chance_to_spell_crit.dart' as structure_gt_chance_to_spell_crit;
import 'gt/gt_npc_mana_cost_scaler.dart' as structure_gt_npc_mana_cost_scaler;
import 'gt/gt_oct_class_combat_rating_scalar.dart'
    as structure_gt_oct_class_combat_rating_scalar;
import 'gt/gt_oct_regen_hp.dart' as structure_gt_oct_regen_hp;
import 'gt/gt_regen_hp_per_spt.dart' as structure_gt_regen_hp_per_spt;
import 'gt/gt_regen_mp_per_spt.dart' as structure_gt_regen_mp_per_spt;

// 其他
import 'other/area_poi.dart' as structure_area_poi;
import 'other/auction_house.dart' as structure_auction_house;
import 'other/bank_bag_slot_prices.dart' as structure_bank_bag_slot_prices;
import 'other/barber_shop_style.dart' as structure_barber_shop_style;
import 'other/battlemaster_list.dart' as structure_battlemaster_list;
import 'other/cinematic_camera.dart' as structure_cinematic_camera;
import 'other/cinematic_sequences.dart' as structure_cinematic_sequences;
import 'other/currency_types.dart' as structure_currency_types;
import 'other/destructible_model_data.dart' as structure_destructible_model_data;
import 'other/durability_costs.dart' as structure_durability_costs;
import 'other/durability_quality.dart' as structure_durability_quality;
import 'other/emotes.dart' as structure_emotes;
import 'other/emotes_text.dart' as structure_emotes_text;
import 'other/game_object_art_kit.dart' as structure_game_object_art_kit;
import 'other/holidays.dart' as structure_holidays;
import 'other/lfg_dungeon.dart' as structure_lfg_dungeon;
import 'other/light.dart' as structure_light;
import 'other/liquid_type.dart' as structure_liquid_type;
import 'other/lock.dart' as structure_lock;
import 'other/mail_template.dart' as structure_mail_template;
import 'other/movie.dart' as structure_movie;
import 'other/names_reserved.dart' as structure_names_reserved;
import 'other/names_profanity.dart' as structure_names_profanity;
import 'other/override_spell_data.dart' as structure_override_spell_data;
import 'other/power_display.dart' as structure_power_display;
import 'other/pvp_difficulty.dart' as structure_pvp_difficulty;
import 'other/random_properties_points.dart'
    as structure_random_properties_points;
import 'other/scaling_stat_distribution.dart'
    as structure_scaling_stat_distribution;
import 'other/scaling_stat_values.dart' as structure_scaling_stat_values;
import 'other/sound_entries.dart' as structure_sound_entries;
import 'other/stable_slot_prices.dart' as structure_stable_slot_prices;
import 'other/summon_properties.dart' as structure_summon_properties;
import 'other/taxi_nodes.dart' as structure_taxi_nodes;
import 'other/taxi_path.dart' as structure_taxi_path;
import 'other/taxi_path_node.dart' as structure_taxi_path_node;
import 'other/team_contribution_points.dart'
    as structure_team_contribution_points;
import 'other/totem_category.dart' as structure_totem_category;
import 'other/transport_animation.dart' as structure_transport_animation;
import 'other/transport_rotation.dart' as structure_transport_rotation;
import 'other/vehicle.dart' as structure_vehicle;
import 'vehicle/vehicle_seat.dart' as structure_vehicle_seat;
import 'other/wmo_area_table.dart' as structure_wmo_area_table;
import 'other/world_map_area.dart' as structure_world_map_area;
import 'other/world_map_overlay.dart' as structure_world_map_overlay;

/// DBC 格式静态类
///
/// 提供与 AzerothCore DBCfmt.h 完全对齐的静态属性式格式访问。
///
/// 示例用法:
/// ```dart
/// // 获取格式字符串
/// String format = DbcFormats.achievement;
///
/// // 获取结构定义
/// DbcStructureDefinition structure = DbcFormats.achievementStruct;
/// ```
class Definitions {
  // ===== 成就 =====
  static final achievement = structure_achievement.achievement;
  static const achievementCategory =
      structure_achievement_category.achievementCategory;
  static const achievementCriteria =
      structure_achievement_criteria.achievementCriteria;

  // ===== 角色 =====
  static final chrRaces = structure_chr_races.chrRaces;
  static final chrClasses = structure_chr_classes.chrClasses;
  static const charStartOutfit = structure_char_start_outfit.charStartOutfit;
  static const charTitles = structure_char_titles.charTitles;
  static const chatChannels = structure_chat_channels.chatChannels;
  static const talent = structure_talent.talent;
  static const talentTab = structure_talent_tab.talentTab;

  // ===== 生物 =====
  static final creatureFamily = structure_creature_family.creatureFamily;
  static const creatureDisplayInfo =
      structure_creature_display_info.creatureDisplayInfo;
  static const creatureDisplayInfoExtra =
      structure_creature_display_info_extra.creatureDisplayInfoExtra;
  static const creatureModelData =
      structure_creature_model_data.creatureModelData;
  static const creatureSpellData =
      structure_creature_spell_data.creatureSpellData;
  static const creatureType = structure_creature_type.creatureType;

  // ===== 派系 =====
  static final faction = structure_faction.faction;
  static const factionTemplate = structure_faction_template.factionTemplate;

  // ===== 游戏对象 =====
  static const gameObjectDisplayInfo =
      structure_game_object_display_info.gameObjectDisplayInfo;

  // ===== 物品 =====
  static const item = structure_item.item;
  static final itemSet = structure_item_set.itemSet;
  static const itemExtendedCost =
      structure_item_extended_cost.itemExtendedCost;
  static const itemBagFamily = structure_item_bag_family.itemBagFamily;
  static const itemDisplayTemplate =
      structure_item_display_template.itemDisplayTemplate;
  static const itemLimitCategory =
      structure_item_limit_category.itemLimitCategory;
  static const itemRandomProperties =
      structure_item_random_properties.itemRandomProperties;
  static const itemRandomSuffix =
      structure_item_random_suffix.itemRandomSuffix;
  static const gemProperties = structure_gem_properties.gemProperties;

  // ===== 地图 =====
  static final mapEntry = structure_map_entry.mapEntry;
  static final areaTable = structure_area_table.areaTable;
  static const areaGroup = structure_area_group.areaGroup;
  static final dungeonEncounter =
      structure_dungeon_encounter.dungeonEncounter;
  static const mapDifficulty = structure_map_difficulty.mapDifficulty;

  // ===== 任务 =====
  static const questSort = structure_quest_sort.questSort;
  static const questXp = structure_quest_xp.questXp;
  static const questFactionReward =
      structure_quest_faction_reward.questFactionReward;

  // ===== 技能 =====
  static final skillLine = structure_skill_line.skillLine;
  static const skillLineAbility =
      structure_skill_line_ability.skillLineAbility;
  static const skillRaceClassInfo =
      structure_skill_race_class_info.skillRaceClassInfo;
  static const skillTiers = structure_skill_tiers.skillTiers;

  // ===== 法术 =====
  static final spell = structure_spell.spell;
  static const spellDuration = structure_spell_duration.spellDuration;
  static const spellRange = structure_spell_range.spellRange;
  static const spellCastTime = structure_spell_cast_time.spellCastTime;
  static const spellCategory = structure_spell_category.spellCategory;
  static const spellDifficulty = structure_spell_difficulty.spellDifficulty;
  static const spellFocusObject =
      structure_spell_focus_object.spellFocusObject;
  static const spellRadius = structure_spell_radius.spellRadius;
  static const spellRuneCost = structure_spell_rune_cost.spellRuneCost;
  static const spellShapeshiftForm =
      structure_spell_shapeshift_form.spellShapeshiftForm;
  static const spellVisual = structure_spell_visual.spellVisual;
  static const glyphProperties = structure_glyph_properties.glyphProperties;
  static const glyphSlot = structure_glyph_slot.glyphSlot;

  // ===== GT (游戏数据表) =====
  static const gtBarberShopCostBase =
      structure_gt_barber_shop_cost_base.gtBarberShopCostBase;
  static const gtCombatRatings =
      structure_gt_combat_ratings.gtCombatRatings;
  static const gtChanceToMeleeCritBase =
      structure_gt_chance_to_melee_crit_base.gtChanceToMeleeCritBase;
  static const gtChanceToMeleeCrit =
      structure_gt_chance_to_melee_crit.gtChanceToMeleeCrit;
  static const gtChanceToSpellCritBase =
      structure_gt_chance_to_spell_crit_base.gtChanceToSpellCritBase;
  static const gtChanceToSpellCrit =
      structure_gt_chance_to_spell_crit.gtChanceToSpellCrit;
  static const gtNpcManaCostScaler =
      structure_gt_npc_mana_cost_scaler.gtNpcManaCostScaler;
  static const gtOctClassCombatRatingScalar =
      structure_gt_oct_class_combat_rating_scalar.gtOctClassCombatRatingScalar;
  static const gtOctRegenHp = structure_gt_oct_regen_hp.gtOctRegenHp;
  static const gtRegenHpPerSpt =
      structure_gt_regen_hp_per_spt.gtRegenHpPerSpt;
  static const gtRegenMpPerSpt =
      structure_gt_regen_mp_per_spt.gtRegenMpPerSpt;

  // ===== 其他 =====
  static const areaPoi = structure_area_poi.areaPoi;
  static const auctionHouse = structure_auction_house.auctionHouse;
  static const bankBagSlotPrices =
      structure_bank_bag_slot_prices.bankBagSlotPrices;
  static const barberShopStyle =
      structure_barber_shop_style.barberShopStyle;
  static const battlemasterList =
      structure_battlemaster_list.battlemasterList;
  static const cinematicCamera =
      structure_cinematic_camera.cinematicCamera;
  static const cinematicSequences =
      structure_cinematic_sequences.cinematicSequences;
  static const currencyTypes = structure_currency_types.currencyTypes;
  static const destructibleModelData =
      structure_destructible_model_data.destructibleModelData;
  static const durabilityCosts =
      structure_durability_costs.durabilityCosts;
  static const durabilityQuality =
      structure_durability_quality.durabilityQuality;
  static const emotes = structure_emotes.emotes;
  static const emotesText = structure_emotes_text.emotesText;
  static const gameObjectArtKit =
      structure_game_object_art_kit.gameObjectArtKit;
  static const holidays = structure_holidays.holidays;
  static const lfgDungeon = structure_lfg_dungeon.lfgDungeon;
  static const light = structure_light.light;
  static const liquidType = structure_liquid_type.liquidType;
  static const lock = structure_lock.lock;
  static const mailTemplate = structure_mail_template.mailTemplate;
  static const movie = structure_movie.movie;
  static const namesReserved = structure_names_reserved.namesReserved;
  static const namesProfanity = structure_names_profanity.namesProfanity;
  static const overrideSpellData =
      structure_override_spell_data.overrideSpellData;
  static const powerDisplay = structure_power_display.powerDisplay;
  static const pvpDifficulty = structure_pvp_difficulty.pvpDifficulty;
  static const randomPropertiesPoints =
      structure_random_properties_points.randomPropertiesPoints;
  static const scalingStatDistribution =
      structure_scaling_stat_distribution.scalingStatDistribution;
  static const scalingStatValues =
      structure_scaling_stat_values.scalingStatValues;
  static const soundEntries = structure_sound_entries.soundEntries;
  static const stableSlotPrices =
      structure_stable_slot_prices.stableSlotPrices;
  static const summonProperties =
      structure_summon_properties.summonProperties;
  static final taxiNodes = structure_taxi_nodes.taxiNodes;
  static const taxiPath = structure_taxi_path.taxiPath;
  static const taxiPathNode = structure_taxi_path_node.taxiPathNode;
  static const teamContributionPoints =
      structure_team_contribution_points.teamContributionPoints;
  static final totemCategory = structure_totem_category.totemCategory;
  static const transportAnimation =
      structure_transport_animation.transportAnimation;
  static const transportRotation =
      structure_transport_rotation.transportRotation;
  static const vehicle = structure_vehicle.vehicle;
  static const vehicleSeat = structure_vehicle_seat.vehicleSeat;
  static const wmoAreaTable = structure_wmo_area_table.wmoAreaTable;
  static const worldMapArea = structure_world_map_area.worldMapArea;
  static const worldMapOverlay =
      structure_world_map_overlay.worldMapOverlay;
}

/// DBC 格式字符串注册表
///
/// 提供通过字符串名称查找格式字符串的功能。
class DbcFormatStrings {
  DbcFormatStrings._();

  static final Map<String, String> _nameToFormat = {
    'Achievement': Definitions.achievement.format,
    'AchievementCategory': Definitions.achievementCategory.format,
    'AchievementCriteria': Definitions.achievementCriteria.format,
    'ChrRaces': Definitions.chrRaces.format,
    'ChrClasses': Definitions.chrClasses.format,
    'CharStartOutfit': Definitions.charStartOutfit.format,
    'CharTitles': Definitions.charTitles.format,
    'ChatChannels': Definitions.chatChannels.format,
    'Talent': Definitions.talent.format,
    'TalentTab': Definitions.talentTab.format,
    'CreatureFamily': Definitions.creatureFamily.format,
    'CreatureDisplayInfo': Definitions.creatureDisplayInfo.format,
    'CreatureDisplayInfoExtra': Definitions.creatureDisplayInfoExtra.format,
    'CreatureModelData': Definitions.creatureModelData.format,
    'CreatureSpellData': Definitions.creatureSpellData.format,
    'CreatureType': Definitions.creatureType.format,
    'Faction': Definitions.faction.format,
    'FactionTemplate': Definitions.factionTemplate.format,
    'GameObjectDisplayInfo': Definitions.gameObjectDisplayInfo.format,
    'Item': Definitions.item.format,
    'ItemSet': Definitions.itemSet.format,
    'ItemExtendedCost': Definitions.itemExtendedCost.format,
    'ItemBagFamily': Definitions.itemBagFamily.format,
    'ItemDisplayTemplate': Definitions.itemDisplayTemplate.format,
    'ItemLimitCategory': Definitions.itemLimitCategory.format,
    'ItemRandomProperties': Definitions.itemRandomProperties.format,
    'ItemRandomSuffix': Definitions.itemRandomSuffix.format,
    'GemProperties': Definitions.gemProperties.format,
    'Map': Definitions.mapEntry.format,
    'AreaTable': Definitions.areaTable.format,
    'AreaGroup': Definitions.areaGroup.format,
    'DungeonEncounter': Definitions.dungeonEncounter.format,
    'MapDifficulty': Definitions.mapDifficulty.format,
    'QuestSort': Definitions.questSort.format,
    'QuestXP': Definitions.questXp.format,
    'QuestFactionReward': Definitions.questFactionReward.format,
    'SkillLine': Definitions.skillLine.format,
    'SkillLineAbility': Definitions.skillLineAbility.format,
    'SkillRaceClassInfo': Definitions.skillRaceClassInfo.format,
    'SkillTiers': Definitions.skillTiers.format,
    'Spell': Definitions.spell.format,
    'SpellDuration': Definitions.spellDuration.format,
    'SpellRange': Definitions.spellRange.format,
    'SpellCastTime': Definitions.spellCastTime.format,
    'SpellCategory': Definitions.spellCategory.format,
    'SpellDifficulty': Definitions.spellDifficulty.format,
    'SpellFocusObject': Definitions.spellFocusObject.format,
    'SpellRadius': Definitions.spellRadius.format,
    'SpellRuneCost': Definitions.spellRuneCost.format,
    'SpellShapeshiftForm': Definitions.spellShapeshiftForm.format,
    'SpellVisual': Definitions.spellVisual.format,
    'GlyphProperties': Definitions.glyphProperties.format,
    'GlyphSlot': Definitions.glyphSlot.format,
    'GtBarberShopCostBase': Definitions.gtBarberShopCostBase.format,
    'GtCombatRatings': Definitions.gtCombatRatings.format,
    'GtChanceToMeleeCritBase': Definitions.gtChanceToMeleeCritBase.format,
    'GtChanceToMeleeCrit': Definitions.gtChanceToMeleeCrit.format,
    'GtChanceToSpellCritBase': Definitions.gtChanceToSpellCritBase.format,
    'GtChanceToSpellCrit': Definitions.gtChanceToSpellCrit.format,
    'GtNPCManaCostScaler': Definitions.gtNpcManaCostScaler.format,
    'GtOCTClassCombatRatingScalar': Definitions.gtOctClassCombatRatingScalar.format,
    'GtOCTRegenHP': Definitions.gtOctRegenHp.format,
    'GtRegenHPPerSpt': Definitions.gtRegenHpPerSpt.format,
    'GtRegenMPPerSpt': Definitions.gtRegenMpPerSpt.format,
    'AreaPOI': Definitions.areaPoi.format,
    'AuctionHouse': Definitions.auctionHouse.format,
    'BankBagSlotPrices': Definitions.bankBagSlotPrices.format,
    'BarberShopStyle': Definitions.barberShopStyle.format,
    'BattlemasterList': Definitions.battlemasterList.format,
    'CinematicCamera': Definitions.cinematicCamera.format,
    'CinematicSequences': Definitions.cinematicSequences.format,
    'CurrencyTypes': Definitions.currencyTypes.format,
    'DestructibleModelData': Definitions.destructibleModelData.format,
    'DurabilityCosts': Definitions.durabilityCosts.format,
    'DurabilityQuality': Definitions.durabilityQuality.format,
    'Emotes': Definitions.emotes.format,
    'EmotesText': Definitions.emotesText.format,
    'GameObjectArtKit': Definitions.gameObjectArtKit.format,
    'Holidays': Definitions.holidays.format,
    'LFGDungeon': Definitions.lfgDungeon.format,
    'Light': Definitions.light.format,
    'LiquidType': Definitions.liquidType.format,
    'Lock': Definitions.lock.format,
    'MailTemplate': Definitions.mailTemplate.format,
    'Movie': Definitions.movie.format,
    'NamesReserved': Definitions.namesReserved.format,
    'NamesProfanity': Definitions.namesProfanity.format,
    'OverrideSpellData': Definitions.overrideSpellData.format,
    'PowerDisplay': Definitions.powerDisplay.format,
    'PvPDifficulty': Definitions.pvpDifficulty.format,
    'RandomPropertiesPoints': Definitions.randomPropertiesPoints.format,
    'ScalingStatDistribution': Definitions.scalingStatDistribution.format,
    'ScalingStatValues': Definitions.scalingStatValues.format,
    'SoundEntries': Definitions.soundEntries.format,
    'StableSlotPrices': Definitions.stableSlotPrices.format,
    'SummonProperties': Definitions.summonProperties.format,
    'TaxiNodes': Definitions.taxiNodes.format,
    'TaxiPath': Definitions.taxiPath.format,
    'TaxiPathNode': Definitions.taxiPathNode.format,
    'TeamContributionPoints': Definitions.teamContributionPoints.format,
    'TotemCategory': Definitions.totemCategory.format,
    'TransportAnimation': Definitions.transportAnimation.format,
    'TransportRotation': Definitions.transportRotation.format,
    'Vehicle': Definitions.vehicle.format,
    'VehicleSeat': Definitions.vehicleSeat.format,
    'WMOAreaTable': Definitions.wmoAreaTable.format,
    'WorldMapArea': Definitions.worldMapArea.format,
    'WorldMapOverlay': Definitions.worldMapOverlay.format,
  };

  /// 根据名称获取格式字符串
  static String? fromName(String name) => _nameToFormat[name];

  /// 获取所有格式名称
  static List<String> get allNames => _nameToFormat.keys.toList();

  /// 检查格式是否存在
  static bool has(String name) => _nameToFormat.containsKey(name);
}

/// DBC 结构定义注册表
///
/// 提供通过字符串名称查找结构定义的功能。
class DbcStructures {
  DbcStructures._();

  static final Map<String, DbcStructureDefinition> _nameToStructure = {
    'Achievement': Definitions.achievement,
    'AchievementCategory': Definitions.achievementCategory,
    'AchievementCriteria': Definitions.achievementCriteria,
    'ChrRaces': Definitions.chrRaces,
    'ChrClasses': Definitions.chrClasses,
    'CharStartOutfit': Definitions.charStartOutfit,
    'CharTitles': Definitions.charTitles,
    'ChatChannels': Definitions.chatChannels,
    'Talent': Definitions.talent,
    'TalentTab': Definitions.talentTab,
    'CreatureFamily': Definitions.creatureFamily,
    'CreatureDisplayInfo': Definitions.creatureDisplayInfo,
    'CreatureDisplayInfoExtra': Definitions.creatureDisplayInfoExtra,
    'CreatureModelData': Definitions.creatureModelData,
    'CreatureSpellData': Definitions.creatureSpellData,
    'CreatureType': Definitions.creatureType,
    'Faction': Definitions.faction,
    'FactionTemplate': Definitions.factionTemplate,
    'GameObjectDisplayInfo': Definitions.gameObjectDisplayInfo,
    'Item': Definitions.item,
    'ItemSet': Definitions.itemSet,
    'ItemExtendedCost': Definitions.itemExtendedCost,
    'ItemBagFamily': Definitions.itemBagFamily,
    'ItemDisplayTemplate': Definitions.itemDisplayTemplate,
    'ItemLimitCategory': Definitions.itemLimitCategory,
    'ItemRandomProperties': Definitions.itemRandomProperties,
    'ItemRandomSuffix': Definitions.itemRandomSuffix,
    'GemProperties': Definitions.gemProperties,
    'Map': Definitions.mapEntry,
    'AreaTable': Definitions.areaTable,
    'AreaGroup': Definitions.areaGroup,
    'DungeonEncounter': Definitions.dungeonEncounter,
    'MapDifficulty': Definitions.mapDifficulty,
    'QuestSort': Definitions.questSort,
    'QuestXP': Definitions.questXp,
    'QuestFactionReward': Definitions.questFactionReward,
    'SkillLine': Definitions.skillLine,
    'SkillLineAbility': Definitions.skillLineAbility,
    'SkillRaceClassInfo': Definitions.skillRaceClassInfo,
    'SkillTiers': Definitions.skillTiers,
    'Spell': Definitions.spell,
    'SpellDuration': Definitions.spellDuration,
    'SpellRange': Definitions.spellRange,
    'SpellCastTime': Definitions.spellCastTime,
    'SpellCategory': Definitions.spellCategory,
    'SpellDifficulty': Definitions.spellDifficulty,
    'SpellFocusObject': Definitions.spellFocusObject,
    'SpellRadius': Definitions.spellRadius,
    'SpellRuneCost': Definitions.spellRuneCost,
    'SpellShapeshiftForm': Definitions.spellShapeshiftForm,
    'SpellVisual': Definitions.spellVisual,
    'GlyphProperties': Definitions.glyphProperties,
    'GlyphSlot': Definitions.glyphSlot,
    'GtBarberShopCostBase': Definitions.gtBarberShopCostBase,
    'GtCombatRatings': Definitions.gtCombatRatings,
    'GtChanceToMeleeCritBase': Definitions.gtChanceToMeleeCritBase,
    'GtChanceToMeleeCrit': Definitions.gtChanceToMeleeCrit,
    'GtChanceToSpellCritBase': Definitions.gtChanceToSpellCritBase,
    'GtChanceToSpellCrit': Definitions.gtChanceToSpellCrit,
    'GtNPCManaCostScaler': Definitions.gtNpcManaCostScaler,
    'GtOCTClassCombatRatingScalar':
        Definitions.gtOctClassCombatRatingScalar,
    'GtOCTRegenHP': Definitions.gtOctRegenHp,
    'GtRegenHPPerSpt': Definitions.gtRegenHpPerSpt,
    'GtRegenMPPerSpt': Definitions.gtRegenMpPerSpt,
    'AreaPOI': Definitions.areaPoi,
    'AuctionHouse': Definitions.auctionHouse,
    'BankBagSlotPrices': Definitions.bankBagSlotPrices,
    'BarberShopStyle': Definitions.barberShopStyle,
    'BattlemasterList': Definitions.battlemasterList,
    'CinematicCamera': Definitions.cinematicCamera,
    'CinematicSequences': Definitions.cinematicSequences,
    'CurrencyTypes': Definitions.currencyTypes,
    'DestructibleModelData': Definitions.destructibleModelData,
    'DurabilityCosts': Definitions.durabilityCosts,
    'DurabilityQuality': Definitions.durabilityQuality,
    'Emotes': Definitions.emotes,
    'EmotesText': Definitions.emotesText,
    'GameObjectArtKit': Definitions.gameObjectArtKit,
    'Holidays': Definitions.holidays,
    'LFGDungeon': Definitions.lfgDungeon,
    'Light': Definitions.light,
    'LiquidType': Definitions.liquidType,
    'Lock': Definitions.lock,
    'MailTemplate': Definitions.mailTemplate,
    'Movie': Definitions.movie,
    'NamesReserved': Definitions.namesReserved,
    'NamesProfanity': Definitions.namesProfanity,
    'OverrideSpellData': Definitions.overrideSpellData,
    'PowerDisplay': Definitions.powerDisplay,
    'PvPDifficulty': Definitions.pvpDifficulty,
    'RandomPropertiesPoints': Definitions.randomPropertiesPoints,
    'ScalingStatDistribution': Definitions.scalingStatDistribution,
    'ScalingStatValues': Definitions.scalingStatValues,
    'SoundEntries': Definitions.soundEntries,
    'StableSlotPrices': Definitions.stableSlotPrices,
    'SummonProperties': Definitions.summonProperties,
    'TaxiNodes': Definitions.taxiNodes,
    'TaxiPath': Definitions.taxiPath,
    'TaxiPathNode': Definitions.taxiPathNode,
    'TeamContributionPoints': Definitions.teamContributionPoints,
    'TotemCategory': Definitions.totemCategory,
    'TransportAnimation': Definitions.transportAnimation,
    'TransportRotation': Definitions.transportRotation,
    'Vehicle': Definitions.vehicle,
    'VehicleSeat': Definitions.vehicleSeat,
    'WMOAreaTable': Definitions.wmoAreaTable,
    'WorldMapArea': Definitions.worldMapArea,
    'WorldMapOverlay': Definitions.worldMapOverlay,
  };

  /// 根据名称获取结构定义
  static DbcStructureDefinition? fromName(String name) =>
      _nameToStructure[name];

  /// 获取所有结构名称
  static List<String> get allNames => _nameToStructure.keys.toList();

  /// 检查结构是否存在
  static bool has(String name) => _nameToStructure.containsKey(name);
}
