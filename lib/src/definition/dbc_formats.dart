/// DBC 格式统一接口
///
/// 提供与 AzerothCore DBCfmt.h 完全对齐的静态属性式格式访问。
library;

import 'base/structure_definition.dart';

// 成就
import 'achievement/achievement.dart' as fmtAchievement
    show achievementFormat, achievement;
import 'achievement/achievement_category.dart' as fmtAchievementCategory
    show achievementCategoryFormat, achievementCategory;
import 'achievement/achievement_criteria.dart' as fmtAchievementCriteria
    show achievementCriteriaFormat, achievementCriteria;

// 角色
import 'character/chr_races.dart' as fmtChrRaces
    show chrRacesFormat, chrRaces;
import 'character/chr_classes.dart' as fmtChrClasses
    show chrClassesFormat, chrClasses;
import 'character/char_start_outfit.dart' as fmtCharStartOutfit
    show charStartOutfitFormat, charStartOutfit;
import 'character/char_titles.dart' as fmtCharTitles
    show charTitlesFormat, charTitles;
import 'character/chat_channels.dart' as fmtChatChannels
    show chatChannelsFormat, chatChannels;
import 'character/talent.dart' as fmtTalent
    show talentFormat, talent;
import 'character/talent_tab.dart' as fmtTalentTab
    show talentTabFormat, talentTab;

// 生物
import 'creature/creature_family.dart' as fmtCreatureFamily
    show creatureFamilyFormat, creatureFamily;
import 'creature/creature_display_info.dart' as fmtCreatureDisplayInfo
    show creatureDisplayInfoFormat, creatureDisplayInfo;
import 'creature/creature_display_info_extra.dart' as fmtCreatureDisplayInfoExtra
    show creatureDisplayInfoExtraFormat, creatureDisplayInfoExtra;
import 'creature/creature_model_data.dart' as fmtCreatureModelData
    show creatureModelDataFormat, creatureModelData;
import 'creature/creature_spell_data.dart' as fmtCreatureSpellData
    show creatureSpellDataFormat, creatureSpellData;
import 'creature/creature_type.dart' as fmtCreatureType
    show creatureTypeFormat, creatureType;

// 派系
import 'faction/faction.dart' as fmtFaction
    show factionFormat, faction;
import 'faction/faction_template.dart' as fmtFactionTemplate
    show factionTemplateFormat, factionTemplate;

// 游戏对象
import 'gameobject/game_object_display_info.dart' as fmtGameObjectDisplayInfo
    show gameObjectDisplayInfoFormat, gameObjectDisplayInfo;

// 物品
import 'item/item.dart' as fmtItem
    show itemFormat, item;
import 'item/item_set.dart' as fmtItemSet
    show itemSetFormat, itemSet;
import 'item/item_extended_cost.dart' as fmtItemExtendedCost
    show itemExtendedCostFormat, itemExtendedCost;
import 'item/item_bag_family.dart' as fmtItemBagFamily
    show itemBagFamilyFormat, itemBagFamily;
import 'item/item_display_template.dart' as fmtItemDisplayTemplate
    show itemDisplayTemplateFormat, itemDisplayTemplate;
import 'item/item_limit_category.dart' as fmtItemLimitCategory
    show itemLimitCategoryFormat, itemLimitCategory;
import 'item/item_random_properties.dart' as fmtItemRandomProperties
    show itemRandomPropertiesFormat, itemRandomProperties;
import 'item/item_random_suffix.dart' as fmtItemRandomSuffix
    show itemRandomSuffixFormat, itemRandomSuffix;
import 'item/gem_properties.dart' as fmtGemProperties
    show gemPropertiesFormat, gemProperties;

// 地图
import 'map/map.dart' as fmtMapEntry
    show mapFormat, mapEntry;
import 'map/area_table.dart' as fmtAreaTable
    show areaTableFormat, areaTable;
import 'map/area_group.dart' as fmtAreaGroup
    show areaGroupFormat, areaGroup;
import 'map/dungeon_encounter.dart' as fmtDungeonEncounter
    show dungeonEncounterFormat, dungeonEncounter;
import 'map/map_difficulty.dart' as fmtMapDifficulty
    show mapDifficultyFormat, mapDifficulty;

// 任务
import 'quest/quest_sort.dart' as fmtQuestSort
    show questSortFormat, questSort;
import 'quest/quest_xp.dart' as fmtQuestXp
    show questXpFormat, questXp;
import 'quest/quest_faction_reward.dart' as fmtQuestFactionReward
    show questFactionRewardFormat, questFactionReward;

// 技能
import 'skill/skill_line.dart' as fmtSkillLine
    show skillLineFormat, skillLine;
import 'skill/skill_line_ability.dart' as fmtSkillLineAbility
    show skillLineAbilityFormat, skillLineAbility;
import 'skill/skill_race_class_info.dart' as fmtSkillRaceClassInfo
    show skillRaceClassInfoFormat, skillRaceClassInfo;
import 'skill/skill_tiers.dart' as fmtSkillTiers
    show skillTiersFormat, skillTiers;

// 法术
import 'spell/spell.dart' as fmtSpell
    show spellFormat, spell;
import 'spell/spell_duration.dart' as fmtSpellDuration
    show spellDurationFormat, spellDuration;
import 'spell/spell_range.dart' as fmtSpellRange
    show spellRangeFormat, spellRange;
import 'spell/spell_cast_time.dart' as fmtSpellCastTime
    show spellCastTimeFormat, spellCastTime;
import 'spell/spell_category.dart' as fmtSpellCategory
    show spellCategoryFormat, spellCategory;
import 'spell/spell_difficulty.dart' as fmtSpellDifficulty
    show spellDifficultyFormat, spellDifficulty;
import 'spell/spell_focus_object.dart' as fmtSpellFocusObject
    show spellFocusObjectFormat, spellFocusObject;
import 'spell/spell_radius.dart' as fmtSpellRadius
    show spellRadiusFormat, spellRadius;
import 'spell/spell_rune_cost.dart' as fmtSpellRuneCost
    show spellRuneCostFormat, spellRuneCost;
import 'spell/spell_shapeshift_form.dart' as fmtSpellShapeshiftForm
    show spellShapeshiftFormFormat, spellShapeshiftForm;
import 'spell/spell_visual.dart' as fmtSpellVisual
    show spellVisualFormat, spellVisual;
import 'spell/glyph_properties.dart' as fmtGlyphProperties
    show glyphPropertiesFormat, glyphProperties;
import 'spell/glyph_slot.dart' as fmtGlyphSlot
    show glyphSlotFormat, glyphSlot;

// GT (游戏数据表)
import 'gt/gt_barber_shop_cost_base.dart' as fmtGtBarberShopCostBase
    show gtBarberShopCostBaseFormat, gtBarberShopCostBase;
import 'gt/gt_combat_ratings.dart' as fmtGtCombatRatings
    show gtCombatRatingsFormat, gtCombatRatings;
import 'gt/gt_chance_to_melee_crit_base.dart' as fmtGtChanceToMeleeCritBase
    show gtChanceToMeleeCritBaseFormat, gtChanceToMeleeCritBase;
import 'gt/gt_chance_to_melee_crit.dart' as fmtGtChanceToMeleeCrit
    show gtChanceToMeleeCritFormat, gtChanceToMeleeCrit;
import 'gt/gt_chance_to_spell_crit_base.dart' as fmtGtChanceToSpellCritBase
    show gtChanceToSpellCritBaseFormat, gtChanceToSpellCritBase;
import 'gt/gt_chance_to_spell_crit.dart' as fmtGtChanceToSpellCrit
    show gtChanceToSpellCritFormat, gtChanceToSpellCrit;
import 'gt/gt_npc_mana_cost_scaler.dart' as fmtGtNpcManaCostScaler
    show gtNpcManaCostScalerFormat, gtNpcManaCostScaler;
import 'gt/gt_oct_class_combat_rating_scalar.dart' as fmtGtOctClassCombatRatingScalar
    show gtOctClassCombatRatingScalarFormat, gtOctClassCombatRatingScalar;
import 'gt/gt_oct_regen_hp.dart' as fmtGtOctRegenHp
    show gtOctRegenHpFormat, gtOctRegenHp;
import 'gt/gt_regen_hp_per_spt.dart' as fmtGtRegenHpPerSpt
    show gtRegenHpPerSptFormat, gtRegenHpPerSpt;
import 'gt/gt_regen_mp_per_spt.dart' as fmtGtRegenMpPerSpt
    show gtRegenMpPerSptFormat, gtRegenMpPerSpt;

// 其他
import 'other/area_poi.dart' as fmtAreaPoi
    show areaPoiFormat, areaPoi;
import 'other/auction_house.dart' as fmtAuctionHouse
    show auctionHouseFormat, auctionHouse;
import 'other/bank_bag_slot_prices.dart' as fmtBankBagSlotPrices
    show bankBagSlotPricesFormat, bankBagSlotPrices;
import 'other/barber_shop_style.dart' as fmtBarberShopStyle
    show barberShopStyleFormat, barberShopStyle;
import 'other/battlemaster_list.dart' as fmtBattlemasterList
    show battlemasterListFormat, battlemasterList;
import 'other/cinematic_camera.dart' as fmtCinematicCamera
    show cinematicCameraFormat, cinematicCamera;
import 'other/cinematic_sequences.dart' as fmtCinematicSequences
    show cinematicSequencesFormat, cinematicSequences;
import 'other/currency_types.dart' as fmtCurrencyTypes
    show currencyTypesFormat, currencyTypes;
import 'other/destructible_model_data.dart' as fmtDestructibleModelData
    show destructibleModelDataFormat, destructibleModelData;
import 'other/durability_costs.dart' as fmtDurabilityCosts
    show durabilityCostsFormat, durabilityCosts;
import 'other/durability_quality.dart' as fmtDurabilityQuality
    show durabilityQualityFormat, durabilityQuality;
import 'other/emotes.dart' as fmtEmotes
    show emotesFormat, emotes;
import 'other/emotes_text.dart' as fmtEmotesText
    show emotesTextFormat, emotesText;
import 'other/game_object_art_kit.dart' as fmtGameObjectArtKit
    show gameObjectArtKitFormat, gameObjectArtKit;
import 'other/holidays.dart' as fmtHolidays
    show holidaysFormat, holidays;
import 'other/lfg_dungeon.dart' as fmtLfgDungeon
    show lfgDungeonFormat, lfgDungeon;
import 'other/light.dart' as fmtLight
    show lightFormat, light;
import 'other/liquid_type.dart' as fmtLiquidType
    show liquidTypeFormat, liquidType;
import 'other/lock.dart' as fmtLock
    show lockFormat, lock;
import 'other/mail_template.dart' as fmtMailTemplate
    show mailTemplateFormat, mailTemplate;
import 'other/movie.dart' as fmtMovie
    show movieFormat, movie;
import 'other/names_reserved.dart' as fmtNamesReserved
    show namesReservedFormat, namesReserved;
import 'other/names_profanity.dart' as fmtNamesProfanity
    show namesProfanityFormat, namesProfanity;
import 'other/override_spell_data.dart' as fmtOverrideSpellData
    show overrideSpellDataFormat, overrideSpellData;
import 'other/power_display.dart' as fmtPowerDisplay
    show powerDisplayFormat, powerDisplay;
import 'other/pvp_difficulty.dart' as fmtPvpDifficulty
    show pvpDifficultyFormat, pvpDifficulty;
import 'other/random_properties_points.dart' as fmtRandomPropertiesPoints
    show randomPropertiesPointsFormat, randomPropertiesPoints;
import 'other/scaling_stat_distribution.dart' as fmtScalingStatDistribution
    show scalingStatDistributionFormat, scalingStatDistribution;
import 'other/scaling_stat_values.dart' as fmtScalingStatValues
    show scalingStatValuesFormat, scalingStatValues;
import 'other/sound_entries.dart' as fmtSoundEntries
    show soundEntriesFormat, soundEntries;
import 'other/stable_slot_prices.dart' as fmtStableSlotPrices
    show stableSlotPricesFormat, stableSlotPrices;
import 'other/summon_properties.dart' as fmtSummonProperties
    show summonPropertiesFormat, summonProperties;
import 'other/taxi_nodes.dart' as fmtTaxiNodes
    show taxiNodesFormat, taxiNodes;
import 'other/taxi_path.dart' as fmtTaxiPath
    show taxiPathFormat, taxiPath;
import 'other/taxi_path_node.dart' as fmtTaxiPathNode
    show taxiPathNodeFormat, taxiPathNode;
import 'other/team_contribution_points.dart' as fmtTeamContributionPoints
    show teamContributionPointsFormat, teamContributionPoints;
import 'other/totem_category.dart' as fmtTotemCategory
    show totemCategoryFormat, totemCategory;
import 'other/transport_animation.dart' as fmtTransportAnimation
    show transportAnimationFormat, transportAnimation;
import 'other/transport_rotation.dart' as fmtTransportRotation
    show transportRotationFormat, transportRotation;
import 'other/vehicle.dart' as fmtVehicle
    show vehicleFormat, vehicle;
import 'vehicle/vehicle_seat.dart' as fmtVehicleSeat
    show vehicleSeatFormat, vehicleSeat;
import 'other/wmo_area_table.dart' as fmtWmoAreaTable
    show wmoAreaTableFormat, wmoAreaTable;
import 'other/world_map_area.dart' as fmtWorldMapArea
    show worldMapAreaFormat, worldMapArea;
import 'other/world_map_overlay.dart' as fmtWorldMapOverlay
    show worldMapOverlayFormat, worldMapOverlay;

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
class DbcFormats {
  DbcFormats._();

  // ===== 成就 =====
  static const String achievement = fmtAchievement.achievementFormat;
  static const DbcStructureDefinition achievementStruct = fmtAchievement.achievement;

  static const String achievementCategory = fmtAchievementCategory.achievementCategoryFormat;
  static const DbcStructureDefinition achievementCategoryStruct = fmtAchievementCategory.achievementCategory;

  static const String achievementCriteria = fmtAchievementCriteria.achievementCriteriaFormat;
  static const DbcStructureDefinition achievementCriteriaStruct = fmtAchievementCriteria.achievementCriteria;

  // ===== 角色 =====
  static const String chrRaces = fmtChrRaces.chrRacesFormat;
  static const DbcStructureDefinition chrRacesStruct = fmtChrRaces.chrRaces;

  static const String chrClasses = fmtChrClasses.chrClassesFormat;
  static const DbcStructureDefinition chrClassesStruct = fmtChrClasses.chrClasses;

  static const String charStartOutfit = fmtCharStartOutfit.charStartOutfitFormat;
  static const DbcStructureDefinition charStartOutfitStruct = fmtCharStartOutfit.charStartOutfit;

  static const String charTitles = fmtCharTitles.charTitlesFormat;
  static const DbcStructureDefinition charTitlesStruct = fmtCharTitles.charTitles;

  static const String chatChannels = fmtChatChannels.chatChannelsFormat;
  static const DbcStructureDefinition chatChannelsStruct = fmtChatChannels.chatChannels;

  static const String talent = fmtTalent.talentFormat;
  static const DbcStructureDefinition talentStruct = fmtTalent.talent;

  static const String talentTab = fmtTalentTab.talentTabFormat;
  static const DbcStructureDefinition talentTabStruct = fmtTalentTab.talentTab;

  // ===== 生物 =====
  static const String creatureFamily = fmtCreatureFamily.creatureFamilyFormat;
  static const DbcStructureDefinition creatureFamilyStruct = fmtCreatureFamily.creatureFamily;

  static const String creatureDisplayInfo = fmtCreatureDisplayInfo.creatureDisplayInfoFormat;
  static const DbcStructureDefinition creatureDisplayInfoStruct = fmtCreatureDisplayInfo.creatureDisplayInfo;

  static const String creatureDisplayInfoExtra = fmtCreatureDisplayInfoExtra.creatureDisplayInfoExtraFormat;
  static const DbcStructureDefinition creatureDisplayInfoExtraStruct = fmtCreatureDisplayInfoExtra.creatureDisplayInfoExtra;

  static const String creatureModelData = fmtCreatureModelData.creatureModelDataFormat;
  static const DbcStructureDefinition creatureModelDataStruct = fmtCreatureModelData.creatureModelData;

  static const String creatureSpellData = fmtCreatureSpellData.creatureSpellDataFormat;
  static const DbcStructureDefinition creatureSpellDataStruct = fmtCreatureSpellData.creatureSpellData;

  static const String creatureType = fmtCreatureType.creatureTypeFormat;
  static const DbcStructureDefinition creatureTypeStruct = fmtCreatureType.creatureType;

  // ===== 派系 =====
  static const String faction = fmtFaction.factionFormat;
  static const DbcStructureDefinition factionStruct = fmtFaction.faction;

  static const String factionTemplate = fmtFactionTemplate.factionTemplateFormat;
  static const DbcStructureDefinition factionTemplateStruct = fmtFactionTemplate.factionTemplate;

  // ===== 游戏对象 =====
  static const String gameObjectDisplayInfo = fmtGameObjectDisplayInfo.gameObjectDisplayInfoFormat;
  static const DbcStructureDefinition gameObjectDisplayInfoStruct = fmtGameObjectDisplayInfo.gameObjectDisplayInfo;

  // ===== 物品 =====
  static const String item = fmtItem.itemFormat;
  static const DbcStructureDefinition itemStruct = fmtItem.item;

  static const String itemSet = fmtItemSet.itemSetFormat;
  static const DbcStructureDefinition itemSetStruct = fmtItemSet.itemSet;

  static const String itemExtendedCost = fmtItemExtendedCost.itemExtendedCostFormat;
  static const DbcStructureDefinition itemExtendedCostStruct = fmtItemExtendedCost.itemExtendedCost;

  static const String itemBagFamily = fmtItemBagFamily.itemBagFamilyFormat;
  static const DbcStructureDefinition itemBagFamilyStruct = fmtItemBagFamily.itemBagFamily;

  static const String itemDisplayTemplate = fmtItemDisplayTemplate.itemDisplayTemplateFormat;
  static const DbcStructureDefinition itemDisplayTemplateStruct = fmtItemDisplayTemplate.itemDisplayTemplate;

  static const String itemLimitCategory = fmtItemLimitCategory.itemLimitCategoryFormat;
  static const DbcStructureDefinition itemLimitCategoryStruct = fmtItemLimitCategory.itemLimitCategory;

  static const String itemRandomProperties = fmtItemRandomProperties.itemRandomPropertiesFormat;
  static const DbcStructureDefinition itemRandomPropertiesStruct = fmtItemRandomProperties.itemRandomProperties;

  static const String itemRandomSuffix = fmtItemRandomSuffix.itemRandomSuffixFormat;
  static const DbcStructureDefinition itemRandomSuffixStruct = fmtItemRandomSuffix.itemRandomSuffix;

  static const String gemProperties = fmtGemProperties.gemPropertiesFormat;
  static const DbcStructureDefinition gemPropertiesStruct = fmtGemProperties.gemProperties;

  // ===== 地图 =====
  static const String mapEntry = fmtMapEntry.mapFormat;
  static const DbcStructureDefinition mapEntryStruct = fmtMapEntry.mapEntry;

  static const String areaTable = fmtAreaTable.areaTableFormat;
  static const DbcStructureDefinition areaTableStruct = fmtAreaTable.areaTable;

  static const String areaGroup = fmtAreaGroup.areaGroupFormat;
  static const DbcStructureDefinition areaGroupStruct = fmtAreaGroup.areaGroup;

  static const String dungeonEncounter = fmtDungeonEncounter.dungeonEncounterFormat;
  static const DbcStructureDefinition dungeonEncounterStruct = fmtDungeonEncounter.dungeonEncounter;

  static const String mapDifficulty = fmtMapDifficulty.mapDifficultyFormat;
  static const DbcStructureDefinition mapDifficultyStruct = fmtMapDifficulty.mapDifficulty;

  // ===== 任务 =====
  static const String questSort = fmtQuestSort.questSortFormat;
  static const DbcStructureDefinition questSortStruct = fmtQuestSort.questSort;

  static const String questXp = fmtQuestXp.questXpFormat;
  static const DbcStructureDefinition questXpStruct = fmtQuestXp.questXp;

  static const String questFactionReward = fmtQuestFactionReward.questFactionRewardFormat;
  static const DbcStructureDefinition questFactionRewardStruct = fmtQuestFactionReward.questFactionReward;

  // ===== 技能 =====
  static const String skillLine = fmtSkillLine.skillLineFormat;
  static const DbcStructureDefinition skillLineStruct = fmtSkillLine.skillLine;

  static const String skillLineAbility = fmtSkillLineAbility.skillLineAbilityFormat;
  static const DbcStructureDefinition skillLineAbilityStruct = fmtSkillLineAbility.skillLineAbility;

  static const String skillRaceClassInfo = fmtSkillRaceClassInfo.skillRaceClassInfoFormat;
  static const DbcStructureDefinition skillRaceClassInfoStruct = fmtSkillRaceClassInfo.skillRaceClassInfo;

  static const String skillTiers = fmtSkillTiers.skillTiersFormat;
  static const DbcStructureDefinition skillTiersStruct = fmtSkillTiers.skillTiers;

  // ===== 法术 =====
  static const String spell = fmtSpell.spellFormat;
  static const DbcStructureDefinition spellStruct = fmtSpell.spell;

  static const String spellDuration = fmtSpellDuration.spellDurationFormat;
  static const DbcStructureDefinition spellDurationStruct = fmtSpellDuration.spellDuration;

  static const String spellRange = fmtSpellRange.spellRangeFormat;
  static const DbcStructureDefinition spellRangeStruct = fmtSpellRange.spellRange;

  static const String spellCastTime = fmtSpellCastTime.spellCastTimeFormat;
  static const DbcStructureDefinition spellCastTimeStruct = fmtSpellCastTime.spellCastTime;

  static const String spellCategory = fmtSpellCategory.spellCategoryFormat;
  static const DbcStructureDefinition spellCategoryStruct = fmtSpellCategory.spellCategory;

  static const String spellDifficulty = fmtSpellDifficulty.spellDifficultyFormat;
  static const DbcStructureDefinition spellDifficultyStruct = fmtSpellDifficulty.spellDifficulty;

  static const String spellFocusObject = fmtSpellFocusObject.spellFocusObjectFormat;
  static const DbcStructureDefinition spellFocusObjectStruct = fmtSpellFocusObject.spellFocusObject;

  static const String spellRadius = fmtSpellRadius.spellRadiusFormat;
  static const DbcStructureDefinition spellRadiusStruct = fmtSpellRadius.spellRadius;

  static const String spellRuneCost = fmtSpellRuneCost.spellRuneCostFormat;
  static const DbcStructureDefinition spellRuneCostStruct = fmtSpellRuneCost.spellRuneCost;

  static const String spellShapeshiftForm = fmtSpellShapeshiftForm.spellShapeshiftFormFormat;
  static const DbcStructureDefinition spellShapeshiftFormStruct = fmtSpellShapeshiftForm.spellShapeshiftForm;

  static const String spellVisual = fmtSpellVisual.spellVisualFormat;
  static const DbcStructureDefinition spellVisualStruct = fmtSpellVisual.spellVisual;

  static const String glyphProperties = fmtGlyphProperties.glyphPropertiesFormat;
  static const DbcStructureDefinition glyphPropertiesStruct = fmtGlyphProperties.glyphProperties;

  static const String glyphSlot = fmtGlyphSlot.glyphSlotFormat;
  static const DbcStructureDefinition glyphSlotStruct = fmtGlyphSlot.glyphSlot;

  // ===== GT (游戏数据表) =====
  static const String gtBarberShopCostBase = fmtGtBarberShopCostBase.gtBarberShopCostBaseFormat;
  static const DbcStructureDefinition gtBarberShopCostBaseStruct = fmtGtBarberShopCostBase.gtBarberShopCostBase;

  static const String gtCombatRatings = fmtGtCombatRatings.gtCombatRatingsFormat;
  static const DbcStructureDefinition gtCombatRatingsStruct = fmtGtCombatRatings.gtCombatRatings;

  static const String gtChanceToMeleeCritBase = fmtGtChanceToMeleeCritBase.gtChanceToMeleeCritBaseFormat;
  static const DbcStructureDefinition gtChanceToMeleeCritBaseStruct = fmtGtChanceToMeleeCritBase.gtChanceToMeleeCritBase;

  static const String gtChanceToMeleeCrit = fmtGtChanceToMeleeCrit.gtChanceToMeleeCritFormat;
  static const DbcStructureDefinition gtChanceToMeleeCritStruct = fmtGtChanceToMeleeCrit.gtChanceToMeleeCrit;

  static const String gtChanceToSpellCritBase = fmtGtChanceToSpellCritBase.gtChanceToSpellCritBaseFormat;
  static const DbcStructureDefinition gtChanceToSpellCritBaseStruct = fmtGtChanceToSpellCritBase.gtChanceToSpellCritBase;

  static const String gtChanceToSpellCrit = fmtGtChanceToSpellCrit.gtChanceToSpellCritFormat;
  static const DbcStructureDefinition gtChanceToSpellCritStruct = fmtGtChanceToSpellCrit.gtChanceToSpellCrit;

  static const String gtNpcManaCostScaler = fmtGtNpcManaCostScaler.gtNpcManaCostScalerFormat;
  static const DbcStructureDefinition gtNpcManaCostScalerStruct = fmtGtNpcManaCostScaler.gtNpcManaCostScaler;

  static const String gtOctClassCombatRatingScalar = fmtGtOctClassCombatRatingScalar.gtOctClassCombatRatingScalarFormat;
  static const DbcStructureDefinition gtOctClassCombatRatingScalarStruct = fmtGtOctClassCombatRatingScalar.gtOctClassCombatRatingScalar;

  static const String gtOctRegenHp = fmtGtOctRegenHp.gtOctRegenHpFormat;
  static const DbcStructureDefinition gtOctRegenHpStruct = fmtGtOctRegenHp.gtOctRegenHp;

  static const String gtRegenHpPerSpt = fmtGtRegenHpPerSpt.gtRegenHpPerSptFormat;
  static const DbcStructureDefinition gtRegenHpPerSptStruct = fmtGtRegenHpPerSpt.gtRegenHpPerSpt;

  static const String gtRegenMpPerSpt = fmtGtRegenMpPerSpt.gtRegenMpPerSptFormat;
  static const DbcStructureDefinition gtRegenMpPerSptStruct = fmtGtRegenMpPerSpt.gtRegenMpPerSpt;

  // ===== 其他 =====
  static const String areaPoi = fmtAreaPoi.areaPoiFormat;
  static const DbcStructureDefinition areaPoiStruct = fmtAreaPoi.areaPoi;

  static const String auctionHouse = fmtAuctionHouse.auctionHouseFormat;
  static const DbcStructureDefinition auctionHouseStruct = fmtAuctionHouse.auctionHouse;

  static const String bankBagSlotPrices = fmtBankBagSlotPrices.bankBagSlotPricesFormat;
  static const DbcStructureDefinition bankBagSlotPricesStruct = fmtBankBagSlotPrices.bankBagSlotPrices;

  static const String barberShopStyle = fmtBarberShopStyle.barberShopStyleFormat;
  static const DbcStructureDefinition barberShopStyleStruct = fmtBarberShopStyle.barberShopStyle;

  static const String battlemasterList = fmtBattlemasterList.battlemasterListFormat;
  static const DbcStructureDefinition battlemasterListStruct = fmtBattlemasterList.battlemasterList;

  static const String cinematicCamera = fmtCinematicCamera.cinematicCameraFormat;
  static const DbcStructureDefinition cinematicCameraStruct = fmtCinematicCamera.cinematicCamera;

  static const String cinematicSequences = fmtCinematicSequences.cinematicSequencesFormat;
  static const DbcStructureDefinition cinematicSequencesStruct = fmtCinematicSequences.cinematicSequences;

  static const String currencyTypes = fmtCurrencyTypes.currencyTypesFormat;
  static const DbcStructureDefinition currencyTypesStruct = fmtCurrencyTypes.currencyTypes;

  static const String destructibleModelData = fmtDestructibleModelData.destructibleModelDataFormat;
  static const DbcStructureDefinition destructibleModelDataStruct = fmtDestructibleModelData.destructibleModelData;

  static const String durabilityCosts = fmtDurabilityCosts.durabilityCostsFormat;
  static const DbcStructureDefinition durabilityCostsStruct = fmtDurabilityCosts.durabilityCosts;

  static const String durabilityQuality = fmtDurabilityQuality.durabilityQualityFormat;
  static const DbcStructureDefinition durabilityQualityStruct = fmtDurabilityQuality.durabilityQuality;

  static const String emotes = fmtEmotes.emotesFormat;
  static const DbcStructureDefinition emotesStruct = fmtEmotes.emotes;

  static const String emotesText = fmtEmotesText.emotesTextFormat;
  static const DbcStructureDefinition emotesTextStruct = fmtEmotesText.emotesText;

  static const String gameObjectArtKit = fmtGameObjectArtKit.gameObjectArtKitFormat;
  static const DbcStructureDefinition gameObjectArtKitStruct = fmtGameObjectArtKit.gameObjectArtKit;

  static const String holidays = fmtHolidays.holidaysFormat;
  static const DbcStructureDefinition holidaysStruct = fmtHolidays.holidays;

  static const String lfgDungeon = fmtLfgDungeon.lfgDungeonFormat;
  static const DbcStructureDefinition lfgDungeonStruct = fmtLfgDungeon.lfgDungeon;

  static const String light = fmtLight.lightFormat;
  static const DbcStructureDefinition lightStruct = fmtLight.light;

  static const String liquidType = fmtLiquidType.liquidTypeFormat;
  static const DbcStructureDefinition liquidTypeStruct = fmtLiquidType.liquidType;

  static const String lock = fmtLock.lockFormat;
  static const DbcStructureDefinition lockStruct = fmtLock.lock;

  static const String mailTemplate = fmtMailTemplate.mailTemplateFormat;
  static const DbcStructureDefinition mailTemplateStruct = fmtMailTemplate.mailTemplate;

  static const String movie = fmtMovie.movieFormat;
  static const DbcStructureDefinition movieStruct = fmtMovie.movie;

  static const String namesReserved = fmtNamesReserved.namesReservedFormat;
  static const DbcStructureDefinition namesReservedStruct = fmtNamesReserved.namesReserved;

  static const String namesProfanity = fmtNamesProfanity.namesProfanityFormat;
  static const DbcStructureDefinition namesProfanityStruct = fmtNamesProfanity.namesProfanity;

  static const String overrideSpellData = fmtOverrideSpellData.overrideSpellDataFormat;
  static const DbcStructureDefinition overrideSpellDataStruct = fmtOverrideSpellData.overrideSpellData;

  static const String powerDisplay = fmtPowerDisplay.powerDisplayFormat;
  static const DbcStructureDefinition powerDisplayStruct = fmtPowerDisplay.powerDisplay;

  static const String pvpDifficulty = fmtPvpDifficulty.pvpDifficultyFormat;
  static const DbcStructureDefinition pvpDifficultyStruct = fmtPvpDifficulty.pvpDifficulty;

  static const String randomPropertiesPoints = fmtRandomPropertiesPoints.randomPropertiesPointsFormat;
  static const DbcStructureDefinition randomPropertiesPointsStruct = fmtRandomPropertiesPoints.randomPropertiesPoints;

  static const String scalingStatDistribution = fmtScalingStatDistribution.scalingStatDistributionFormat;
  static const DbcStructureDefinition scalingStatDistributionStruct = fmtScalingStatDistribution.scalingStatDistribution;

  static const String scalingStatValues = fmtScalingStatValues.scalingStatValuesFormat;
  static const DbcStructureDefinition scalingStatValuesStruct = fmtScalingStatValues.scalingStatValues;

  static const String soundEntries = fmtSoundEntries.soundEntriesFormat;
  static const DbcStructureDefinition soundEntriesStruct = fmtSoundEntries.soundEntries;

  static const String stableSlotPrices = fmtStableSlotPrices.stableSlotPricesFormat;
  static const DbcStructureDefinition stableSlotPricesStruct = fmtStableSlotPrices.stableSlotPrices;

  static const String summonProperties = fmtSummonProperties.summonPropertiesFormat;
  static const DbcStructureDefinition summonPropertiesStruct = fmtSummonProperties.summonProperties;

  static const String taxiNodes = fmtTaxiNodes.taxiNodesFormat;
  static const DbcStructureDefinition taxiNodesStruct = fmtTaxiNodes.taxiNodes;

  static const String taxiPath = fmtTaxiPath.taxiPathFormat;
  static const DbcStructureDefinition taxiPathStruct = fmtTaxiPath.taxiPath;

  static const String taxiPathNode = fmtTaxiPathNode.taxiPathNodeFormat;
  static const DbcStructureDefinition taxiPathNodeStruct = fmtTaxiPathNode.taxiPathNode;

  static const String teamContributionPoints = fmtTeamContributionPoints.teamContributionPointsFormat;
  static const DbcStructureDefinition teamContributionPointsStruct = fmtTeamContributionPoints.teamContributionPoints;

  static const String totemCategory = fmtTotemCategory.totemCategoryFormat;
  static const DbcStructureDefinition totemCategoryStruct = fmtTotemCategory.totemCategory;

  static const String transportAnimation = fmtTransportAnimation.transportAnimationFormat;
  static const DbcStructureDefinition transportAnimationStruct = fmtTransportAnimation.transportAnimation;

  static const String transportRotation = fmtTransportRotation.transportRotationFormat;
  static const DbcStructureDefinition transportRotationStruct = fmtTransportRotation.transportRotation;

  static const String vehicle = fmtVehicle.vehicleFormat;
  static const DbcStructureDefinition vehicleStruct = fmtVehicle.vehicle;

  static const String vehicleSeat = fmtVehicleSeat.vehicleSeatFormat;
  static const DbcStructureDefinition vehicleSeatStruct = fmtVehicleSeat.vehicleSeat;

  static const String wmoAreaTable = fmtWmoAreaTable.wmoAreaTableFormat;
  static const DbcStructureDefinition wmoAreaTableStruct = fmtWmoAreaTable.wmoAreaTable;

  static const String worldMapArea = fmtWorldMapArea.worldMapAreaFormat;
  static const DbcStructureDefinition worldMapAreaStruct = fmtWorldMapArea.worldMapArea;

  static const String worldMapOverlay = fmtWorldMapOverlay.worldMapOverlayFormat;
  static const DbcStructureDefinition worldMapOverlayStruct = fmtWorldMapOverlay.worldMapOverlay;
}

/// DBC 格式字符串注册表
///
/// 提供通过字符串名称查找格式字符串的功能。
class DbcFormatStrings {
  DbcFormatStrings._();

  static final Map<String, String> _nameToFormat = {
    'Achievement': DbcFormats.achievement,
    'AchievementCategory': DbcFormats.achievementCategory,
    'AchievementCriteria': DbcFormats.achievementCriteria,
    'ChrRaces': DbcFormats.chrRaces,
    'ChrClasses': DbcFormats.chrClasses,
    'CharStartOutfit': DbcFormats.charStartOutfit,
    'CharTitles': DbcFormats.charTitles,
    'ChatChannels': DbcFormats.chatChannels,
    'Talent': DbcFormats.talent,
    'TalentTab': DbcFormats.talentTab,
    'CreatureFamily': DbcFormats.creatureFamily,
    'CreatureDisplayInfo': DbcFormats.creatureDisplayInfo,
    'CreatureDisplayInfoExtra': DbcFormats.creatureDisplayInfoExtra,
    'CreatureModelData': DbcFormats.creatureModelData,
    'CreatureSpellData': DbcFormats.creatureSpellData,
    'CreatureType': DbcFormats.creatureType,
    'Faction': DbcFormats.faction,
    'FactionTemplate': DbcFormats.factionTemplate,
    'GameObjectDisplayInfo': DbcFormats.gameObjectDisplayInfo,
    'Item': DbcFormats.item,
    'ItemSet': DbcFormats.itemSet,
    'ItemExtendedCost': DbcFormats.itemExtendedCost,
    'ItemBagFamily': DbcFormats.itemBagFamily,
    'ItemDisplayTemplate': DbcFormats.itemDisplayTemplate,
    'ItemLimitCategory': DbcFormats.itemLimitCategory,
    'ItemRandomProperties': DbcFormats.itemRandomProperties,
    'ItemRandomSuffix': DbcFormats.itemRandomSuffix,
    'GemProperties': DbcFormats.gemProperties,
    'Map': DbcFormats.mapEntry,
    'AreaTable': DbcFormats.areaTable,
    'AreaGroup': DbcFormats.areaGroup,
    'DungeonEncounter': DbcFormats.dungeonEncounter,
    'MapDifficulty': DbcFormats.mapDifficulty,
    'QuestSort': DbcFormats.questSort,
    'QuestXP': DbcFormats.questXp,
    'QuestFactionReward': DbcFormats.questFactionReward,
    'SkillLine': DbcFormats.skillLine,
    'SkillLineAbility': DbcFormats.skillLineAbility,
    'SkillRaceClassInfo': DbcFormats.skillRaceClassInfo,
    'SkillTiers': DbcFormats.skillTiers,
    'Spell': DbcFormats.spell,
    'SpellDuration': DbcFormats.spellDuration,
    'SpellRange': DbcFormats.spellRange,
    'SpellCastTime': DbcFormats.spellCastTime,
    'SpellCategory': DbcFormats.spellCategory,
    'SpellDifficulty': DbcFormats.spellDifficulty,
    'SpellFocusObject': DbcFormats.spellFocusObject,
    'SpellRadius': DbcFormats.spellRadius,
    'SpellRuneCost': DbcFormats.spellRuneCost,
    'SpellShapeshiftForm': DbcFormats.spellShapeshiftForm,
    'SpellVisual': DbcFormats.spellVisual,
    'GlyphProperties': DbcFormats.glyphProperties,
    'GlyphSlot': DbcFormats.glyphSlot,
    'GtBarberShopCostBase': DbcFormats.gtBarberShopCostBase,
    'GtCombatRatings': DbcFormats.gtCombatRatings,
    'GtChanceToMeleeCritBase': DbcFormats.gtChanceToMeleeCritBase,
    'GtChanceToMeleeCrit': DbcFormats.gtChanceToMeleeCrit,
    'GtChanceToSpellCritBase': DbcFormats.gtChanceToSpellCritBase,
    'GtChanceToSpellCrit': DbcFormats.gtChanceToSpellCrit,
    'GtNPCManaCostScaler': DbcFormats.gtNpcManaCostScaler,
    'GtOCTClassCombatRatingScalar': DbcFormats.gtOctClassCombatRatingScalar,
    'GtOCTRegenHP': DbcFormats.gtOctRegenHp,
    'GtRegenHPPerSpt': DbcFormats.gtRegenHpPerSpt,
    'GtRegenMPPerSpt': DbcFormats.gtRegenMpPerSpt,
    'AreaPOI': DbcFormats.areaPoi,
    'AuctionHouse': DbcFormats.auctionHouse,
    'BankBagSlotPrices': DbcFormats.bankBagSlotPrices,
    'BarberShopStyle': DbcFormats.barberShopStyle,
    'BattlemasterList': DbcFormats.battlemasterList,
    'CinematicCamera': DbcFormats.cinematicCamera,
    'CinematicSequences': DbcFormats.cinematicSequences,
    'CurrencyTypes': DbcFormats.currencyTypes,
    'DestructibleModelData': DbcFormats.destructibleModelData,
    'DurabilityCosts': DbcFormats.durabilityCosts,
    'DurabilityQuality': DbcFormats.durabilityQuality,
    'Emotes': DbcFormats.emotes,
    'EmotesText': DbcFormats.emotesText,
    'GameObjectArtKit': DbcFormats.gameObjectArtKit,
    'Holidays': DbcFormats.holidays,
    'LFGDungeon': DbcFormats.lfgDungeon,
    'Light': DbcFormats.light,
    'LiquidType': DbcFormats.liquidType,
    'Lock': DbcFormats.lock,
    'MailTemplate': DbcFormats.mailTemplate,
    'Movie': DbcFormats.movie,
    'NamesReserved': DbcFormats.namesReserved,
    'NamesProfanity': DbcFormats.namesProfanity,
    'OverrideSpellData': DbcFormats.overrideSpellData,
    'PowerDisplay': DbcFormats.powerDisplay,
    'PvPDifficulty': DbcFormats.pvpDifficulty,
    'RandomPropertiesPoints': DbcFormats.randomPropertiesPoints,
    'ScalingStatDistribution': DbcFormats.scalingStatDistribution,
    'ScalingStatValues': DbcFormats.scalingStatValues,
    'SoundEntries': DbcFormats.soundEntries,
    'StableSlotPrices': DbcFormats.stableSlotPrices,
    'SummonProperties': DbcFormats.summonProperties,
    'TaxiNodes': DbcFormats.taxiNodes,
    'TaxiPath': DbcFormats.taxiPath,
    'TaxiPathNode': DbcFormats.taxiPathNode,
    'TeamContributionPoints': DbcFormats.teamContributionPoints,
    'TotemCategory': DbcFormats.totemCategory,
    'TransportAnimation': DbcFormats.transportAnimation,
    'TransportRotation': DbcFormats.transportRotation,
    'Vehicle': DbcFormats.vehicle,
    'VehicleSeat': DbcFormats.vehicleSeat,
    'WMOAreaTable': DbcFormats.wmoAreaTable,
    'WorldMapArea': DbcFormats.worldMapArea,
    'WorldMapOverlay': DbcFormats.worldMapOverlay,
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
    'Achievement': DbcFormats.achievementStruct,
    'AchievementCategory': DbcFormats.achievementCategoryStruct,
    'AchievementCriteria': DbcFormats.achievementCriteriaStruct,
    'ChrRaces': DbcFormats.chrRacesStruct,
    'ChrClasses': DbcFormats.chrClassesStruct,
    'CharStartOutfit': DbcFormats.charStartOutfitStruct,
    'CharTitles': DbcFormats.charTitlesStruct,
    'ChatChannels': DbcFormats.chatChannelsStruct,
    'Talent': DbcFormats.talentStruct,
    'TalentTab': DbcFormats.talentTabStruct,
    'CreatureFamily': DbcFormats.creatureFamilyStruct,
    'CreatureDisplayInfo': DbcFormats.creatureDisplayInfoStruct,
    'CreatureDisplayInfoExtra': DbcFormats.creatureDisplayInfoExtraStruct,
    'CreatureModelData': DbcFormats.creatureModelDataStruct,
    'CreatureSpellData': DbcFormats.creatureSpellDataStruct,
    'CreatureType': DbcFormats.creatureTypeStruct,
    'Faction': DbcFormats.factionStruct,
    'FactionTemplate': DbcFormats.factionTemplateStruct,
    'GameObjectDisplayInfo': DbcFormats.gameObjectDisplayInfoStruct,
    'Item': DbcFormats.itemStruct,
    'ItemSet': DbcFormats.itemSetStruct,
    'ItemExtendedCost': DbcFormats.itemExtendedCostStruct,
    'ItemBagFamily': DbcFormats.itemBagFamilyStruct,
    'ItemDisplayTemplate': DbcFormats.itemDisplayTemplateStruct,
    'ItemLimitCategory': DbcFormats.itemLimitCategoryStruct,
    'ItemRandomProperties': DbcFormats.itemRandomPropertiesStruct,
    'ItemRandomSuffix': DbcFormats.itemRandomSuffixStruct,
    'GemProperties': DbcFormats.gemPropertiesStruct,
    'Map': DbcFormats.mapEntryStruct,
    'AreaTable': DbcFormats.areaTableStruct,
    'AreaGroup': DbcFormats.areaGroupStruct,
    'DungeonEncounter': DbcFormats.dungeonEncounterStruct,
    'MapDifficulty': DbcFormats.mapDifficultyStruct,
    'QuestSort': DbcFormats.questSortStruct,
    'QuestXP': DbcFormats.questXpStruct,
    'QuestFactionReward': DbcFormats.questFactionRewardStruct,
    'SkillLine': DbcFormats.skillLineStruct,
    'SkillLineAbility': DbcFormats.skillLineAbilityStruct,
    'SkillRaceClassInfo': DbcFormats.skillRaceClassInfoStruct,
    'SkillTiers': DbcFormats.skillTiersStruct,
    'Spell': DbcFormats.spellStruct,
    'SpellDuration': DbcFormats.spellDurationStruct,
    'SpellRange': DbcFormats.spellRangeStruct,
    'SpellCastTime': DbcFormats.spellCastTimeStruct,
    'SpellCategory': DbcFormats.spellCategoryStruct,
    'SpellDifficulty': DbcFormats.spellDifficultyStruct,
    'SpellFocusObject': DbcFormats.spellFocusObjectStruct,
    'SpellRadius': DbcFormats.spellRadiusStruct,
    'SpellRuneCost': DbcFormats.spellRuneCostStruct,
    'SpellShapeshiftForm': DbcFormats.spellShapeshiftFormStruct,
    'SpellVisual': DbcFormats.spellVisualStruct,
    'GlyphProperties': DbcFormats.glyphPropertiesStruct,
    'GlyphSlot': DbcFormats.glyphSlotStruct,
    'GtBarberShopCostBase': DbcFormats.gtBarberShopCostBaseStruct,
    'GtCombatRatings': DbcFormats.gtCombatRatingsStruct,
    'GtChanceToMeleeCritBase': DbcFormats.gtChanceToMeleeCritBaseStruct,
    'GtChanceToMeleeCrit': DbcFormats.gtChanceToMeleeCritStruct,
    'GtChanceToSpellCritBase': DbcFormats.gtChanceToSpellCritBaseStruct,
    'GtChanceToSpellCrit': DbcFormats.gtChanceToSpellCritStruct,
    'GtNPCManaCostScaler': DbcFormats.gtNpcManaCostScalerStruct,
    'GtOCTClassCombatRatingScalar': DbcFormats.gtOctClassCombatRatingScalarStruct,
    'GtOCTRegenHP': DbcFormats.gtOctRegenHpStruct,
    'GtRegenHPPerSpt': DbcFormats.gtRegenHpPerSptStruct,
    'GtRegenMPPerSpt': DbcFormats.gtRegenMpPerSptStruct,
    'AreaPOI': DbcFormats.areaPoiStruct,
    'AuctionHouse': DbcFormats.auctionHouseStruct,
    'BankBagSlotPrices': DbcFormats.bankBagSlotPricesStruct,
    'BarberShopStyle': DbcFormats.barberShopStyleStruct,
    'BattlemasterList': DbcFormats.battlemasterListStruct,
    'CinematicCamera': DbcFormats.cinematicCameraStruct,
    'CinematicSequences': DbcFormats.cinematicSequencesStruct,
    'CurrencyTypes': DbcFormats.currencyTypesStruct,
    'DestructibleModelData': DbcFormats.destructibleModelDataStruct,
    'DurabilityCosts': DbcFormats.durabilityCostsStruct,
    'DurabilityQuality': DbcFormats.durabilityQualityStruct,
    'Emotes': DbcFormats.emotesStruct,
    'EmotesText': DbcFormats.emotesTextStruct,
    'GameObjectArtKit': DbcFormats.gameObjectArtKitStruct,
    'Holidays': DbcFormats.holidaysStruct,
    'LFGDungeon': DbcFormats.lfgDungeonStruct,
    'Light': DbcFormats.lightStruct,
    'LiquidType': DbcFormats.liquidTypeStruct,
    'Lock': DbcFormats.lockStruct,
    'MailTemplate': DbcFormats.mailTemplateStruct,
    'Movie': DbcFormats.movieStruct,
    'NamesReserved': DbcFormats.namesReservedStruct,
    'NamesProfanity': DbcFormats.namesProfanityStruct,
    'OverrideSpellData': DbcFormats.overrideSpellDataStruct,
    'PowerDisplay': DbcFormats.powerDisplayStruct,
    'PvPDifficulty': DbcFormats.pvpDifficultyStruct,
    'RandomPropertiesPoints': DbcFormats.randomPropertiesPointsStruct,
    'ScalingStatDistribution': DbcFormats.scalingStatDistributionStruct,
    'ScalingStatValues': DbcFormats.scalingStatValuesStruct,
    'SoundEntries': DbcFormats.soundEntriesStruct,
    'StableSlotPrices': DbcFormats.stableSlotPricesStruct,
    'SummonProperties': DbcFormats.summonPropertiesStruct,
    'TaxiNodes': DbcFormats.taxiNodesStruct,
    'TaxiPath': DbcFormats.taxiPathStruct,
    'TaxiPathNode': DbcFormats.taxiPathNodeStruct,
    'TeamContributionPoints': DbcFormats.teamContributionPointsStruct,
    'TotemCategory': DbcFormats.totemCategoryStruct,
    'TransportAnimation': DbcFormats.transportAnimationStruct,
    'TransportRotation': DbcFormats.transportRotationStruct,
    'Vehicle': DbcFormats.vehicleStruct,
    'VehicleSeat': DbcFormats.vehicleSeatStruct,
    'WMOAreaTable': DbcFormats.wmoAreaTableStruct,
    'WorldMapArea': DbcFormats.worldMapAreaStruct,
    'WorldMapOverlay': DbcFormats.worldMapOverlayStruct,
  };

  /// 根据名称获取结构定义
  static DbcStructureDefinition? fromName(String name) => _nameToStructure[name];

  /// 获取所有结构名称
  static List<String> get allNames => _nameToStructure.keys.toList();

  /// 检查结构是否存在
  static bool has(String name) => _nameToStructure.containsKey(name);
}
