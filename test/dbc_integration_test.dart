import 'dart:io';

import 'package:test/test.dart';
import 'package:warcrafty/warcrafty.dart';

/// DBC 文件名到定义的映射 (基于自动生成的 definition.dart)
final Map<String, DbcSchema> dbcDefinitions = {
  // achievement
  'Achievement.dbc': Definitions.achievement,
  'Achievement_Category.dbc': Definitions.achievementCategory,
  'Achievement_Criteria.dbc': Definitions.achievementCriteria,

  // area
  'AreaGroup.dbc': Definitions.areaGroup,
  'AreaPOI.dbc': Definitions.areaPOI,
  'AreaTable.dbc': Definitions.areaTable,
  'AreaTrigger.dbc': Definitions.areaTrigger,
  'WMOAreaTable.dbc': Definitions.wMOAreaTable,
  'WorldChunkSounds.dbc': Definitions.worldChunkSounds,
  'WorldMapArea.dbc': Definitions.worldMapArea,
  'WorldMapContinent.dbc': Definitions.worldMapContinent,
  'WorldMapOverlay.dbc': Definitions.worldMapOverlay,
  'WorldMapTransforms.dbc': Definitions.worldMapTransforms,
  'WorldSafeLocs.dbc': Definitions.worldSafeLocs,
  'WorldStateUI.dbc': Definitions.worldStateUI,
  'WorldStateZoneSounds.dbc': Definitions.worldStateZoneSounds,

  // character
  'CharBaseInfo.dbc': Definitions.charBaseInfo,
  'CharHairGeosets.dbc': Definitions.charHairGeosets,
  'CharHairTextures.dbc': Definitions.charHairTextures,
  'CharSections.dbc': Definitions.charSections,
  'CharStartOutfit.dbc': Definitions.charStartOutfit,
  'CharTitles.dbc': Definitions.charTitles,
  'CharacterFacialHairStyles.dbc': Definitions.characterFacialHairStyles,
  'ChatChannels.dbc': Definitions.chatChannels,
  'ChatProfanity.dbc': Definitions.chatProfanity,
  'ChrClasses.dbc': Definitions.chrClasses,
  'ChrRaces.dbc': Definitions.chrRaces,

  // creature
  'CreatureDisplayInfo.dbc': Definitions.creatureDisplayInfo,
  'CreatureDisplayInfoExtra.dbc': Definitions.creatureDisplayInfoExtra,
  'CreatureFamily.dbc': Definitions.creatureFamily,
  'CreatureModelData.dbc': Definitions.creatureModelData,
  'CreatureMovementInfo.dbc': Definitions.creatureMovementInfo,
  'CreatureSoundData.dbc': Definitions.creatureSoundData,
  'CreatureSpellData.dbc': Definitions.creatureSpellData,
  'CreatureType.dbc': Definitions.creatureType,

  // faction
  'Faction.dbc': Definitions.faction,
  'FactionGroup.dbc': Definitions.factionGroup,
  'FactionTemplate.dbc': Definitions.factionTemplate,

  // gameobject
  'GameObjectArtKit.dbc': Definitions.gameObjectArtKit,
  'GameObjectDisplayInfo.dbc': Definitions.gameObjectDisplayInfo,

  // item
  'GemProperties.dbc': Definitions.gemProperties,
  'Item.dbc': Definitions.item,
  'ItemBagFamily.dbc': Definitions.itemBagFamily,
  'ItemClass.dbc': Definitions.itemClass,
  'ItemCondExtCosts.dbc': Definitions.itemCondExtCosts,
  'ItemDisplayInfo.dbc': Definitions.itemDisplayInfo,
  'ItemExtendedCost.dbc': Definitions.itemExtendedCost,
  'ItemGroupSounds.dbc': Definitions.itemGroupSounds,
  'ItemLimitCategory.dbc': Definitions.itemLimitCategory,
  'ItemPetFood.dbc': Definitions.itemPetFood,
  'ItemPurchaseGroup.dbc': Definitions.itemPurchaseGroup,
  'ItemRandomProperties.dbc': Definitions.itemRandomProperties,
  'ItemRandomSuffix.dbc': Definitions.itemRandomSuffix,
  'ItemSet.dbc': Definitions.itemSet,
  'ItemSubClass.dbc': Definitions.itemSubClass,
  'ItemSubClassMask.dbc': Definitions.itemSubClassMask,
  'ItemVisualEffects.dbc': Definitions.itemVisualEffects,
  'ItemVisuals.dbc': Definitions.itemVisuals,

  // light
  'Light.dbc': Definitions.light,
  'LightFloatBand.dbc': Definitions.lightFloatBand,
  'LightIntBand.dbc': Definitions.lightIntBand,
  'LightParams.dbc': Definitions.lightParams,
  'LightSkybox.dbc': Definitions.lightSkybox,

  // map
  'DungeonEncounter.dbc': Definitions.dungeonEncounter,
  'DungeonMap.dbc': Definitions.dungeonMap,
  'DungeonMapChunk.dbc': Definitions.dungeonMapChunk,
  'LFGDungeonExpansion.dbc': Definitions.lFGDungeonExpansion,
  'LFGDungeonGroup.dbc': Definitions.lFGDungeonGroup,
  'LFGDungeons.dbc': Definitions.lFGDungeons,
  'Map.dbc': Definitions.map,
  'MapDifficulty.dbc': Definitions.mapDifficulty,

  // misc
  'AnimationData.dbc': Definitions.animationData,
  'AttackAnimKits.dbc': Definitions.attackAnimKits,
  'AttackAnimTypes.dbc': Definitions.attackAnimTypes,
  'AuctionHouse.dbc': Definitions.auctionHouse,
  'BankBagSlotPrices.dbc': Definitions.bankBagSlotPrices,
  'BannedAddOns.dbc': Definitions.bannedAddOns,
  'BarberShopStyle.dbc': Definitions.barberShopStyle,
  'BattlemasterList.dbc': Definitions.battlemasterList,
  'CameraShakes.dbc': Definitions.cameraShakes,
  'Cfg_Categories.dbc': Definitions.cfgCategories,
  'Cfg_Configs.dbc': Definitions.cfgConfigs,
  'CinematicCamera.dbc': Definitions.cinematicCamera,
  'CinematicSequences.dbc': Definitions.cinematicSequences,
  'CurrencyCategory.dbc': Definitions.currencyCategory,
  'CurrencyTypes.dbc': Definitions.currencyTypes,
  'DanceMoves.dbc': Definitions.danceMoves,
  'DeathThudLookups.dbc': Definitions.deathThudLookups,
  'DeclinedWord.dbc': Definitions.declinedWord,
  'DeclinedWordCases.dbc': Definitions.declinedWordCases,
  'DestructibleModelData.dbc': Definitions.destructibleModelData,
  'DurabilityCosts.dbc': Definitions.durabilityCosts,
  'DurabilityQuality.dbc': Definitions.durabilityQuality,
  'Emotes.dbc': Definitions.emotes,
  'EmotesText.dbc': Definitions.emotesText,
  'EmotesTextData.dbc': Definitions.emotesTextData,
  'EmotesTextSound.dbc': Definitions.emotesTextSound,
  'EnvironmentalDamage.dbc': Definitions.environmentalDamage,
  'Exhaustion.dbc': Definitions.exhaustion,
  'FileData.dbc': Definitions.fileData,
  'FootprintTextures.dbc': Definitions.footprintTextures,
  'FootstepTerrainLookup.dbc': Definitions.footstepTerrainLookup,
  'GMSurveyAnswers.dbc': Definitions.gMSurveyAnswers,
  'GMSurveyCurrentSurvey.dbc': Definitions.gMSurveyCurrentSurvey,
  'GMSurveyQuestions.dbc': Definitions.gMSurveyQuestions,
  'GMSurveySurveys.dbc': Definitions.gMSurveySurveys,
  'GMTicketCategory.dbc': Definitions.gMTicketCategory,
  'GameTables.dbc': Definitions.gameTables,
  'GameTips.dbc': Definitions.gameTips,
  'GroundEffectDoodad.dbc': Definitions.groundEffectDoodad,
  'GroundEffectTexture.dbc': Definitions.groundEffectTexture,
  'HelmetGeosetVisData.dbc': Definitions.helmetGeosetVisData,
  'HolidayDescriptions.dbc': Definitions.holidayDescriptions,
  'HolidayNames.dbc': Definitions.holidayNames,
  'Holidays.dbc': Definitions.holidays,
  'LanguageWords.dbc': Definitions.languageWords,
  'Languages.dbc': Definitions.languages,
  'LiquidMaterial.dbc': Definitions.liquidMaterial,
  'LiquidType.dbc': Definitions.liquidType,
  'LoadingScreenTaxiSplines.dbc': Definitions.loadingScreenTaxiSplines,
  'LoadingScreens.dbc': Definitions.loadingScreens,
  'Lock.dbc': Definitions.lock,
  'LockType.dbc': Definitions.lockType,
  'MailTemplate.dbc': Definitions.mailTemplate,
  'Material.dbc': Definitions.material,
  'Movie.dbc': Definitions.movie,
  'MovieFileData.dbc': Definitions.movieFileData,
  'MovieVariation.dbc': Definitions.movieVariation,
  'NPCSounds.dbc': Definitions.nPCSounds,
  'NameGen.dbc': Definitions.nameGen,
  'NamesProfanity.dbc': Definitions.namesProfanity,
  'NamesReserved.dbc': Definitions.namesReserved,
  'ObjectEffect.dbc': Definitions.objectEffect,
  'ObjectEffectGroup.dbc': Definitions.objectEffectGroup,
  'ObjectEffectModifier.dbc': Definitions.objectEffectModifier,
  'ObjectEffectPackage.dbc': Definitions.objectEffectPackage,
  'ObjectEffectPackageElem.dbc': Definitions.objectEffectPackageElem,
  'OverrideSpellData.dbc': Definitions.overrideSpellData,
  'Package.dbc': Definitions.package,
  'PageTextMaterial.dbc': Definitions.pageTextMaterial,
  'PaperDollItemFrame.dbc': Definitions.paperDollItemFrame,
  'ParticleColor.dbc': Definitions.particleColor,
  'PetPersonality.dbc': Definitions.petPersonality,
  'PetitionType.dbc': Definitions.petitionType,
  'PowerDisplay.dbc': Definitions.powerDisplay,
  'PvpDifficulty.dbc': Definitions.pvpDifficulty,
  'RandPropPoints.dbc': Definitions.randPropPoints,
  'Resistances.dbc': Definitions.resistances,
  'ScalingStatDistribution.dbc': Definitions.scalingStatDistribution,
  'ScalingStatValues.dbc': Definitions.scalingStatValues,
  'ScreenEffect.dbc': Definitions.screenEffect,
  'ServerMessages.dbc': Definitions.serverMessages,
  'SheatheSoundLookups.dbc': Definitions.sheatheSoundLookups,
  'SpamMessages.dbc': Definitions.spamMessages,
  'StableSlotPrices.dbc': Definitions.stableSlotPrices,
  'Startup_Strings.dbc': Definitions.startupStrings,
  'Stationery.dbc': Definitions.stationery,
  'StringLookups.dbc': Definitions.stringLookups,
  'SummonProperties.dbc': Definitions.summonProperties,
  'TeamContributionPoints.dbc': Definitions.teamContributionPoints,
  'TerrainType.dbc': Definitions.terrainType,
  'TerrainTypeSounds.dbc': Definitions.terrainTypeSounds,
  'TransportAnimation.dbc': Definitions.transportAnimation,
  'TransportPhysics.dbc': Definitions.transportPhysics,
  'TransportRotation.dbc': Definitions.transportRotation,
  'UISoundLookups.dbc': Definitions.uISoundLookups,
  'UnitBlood.dbc': Definitions.unitBlood,
  'UnitBloodLevels.dbc': Definitions.unitBloodLevels,
  'VideoHardware.dbc': Definitions.videoHardware,
  'VocalUISounds.dbc': Definitions.vocalUISounds,
  'WeaponImpactSounds.dbc': Definitions.weaponImpactSounds,
  'WeaponSwingSounds2.dbc': Definitions.weaponSwingSounds2,
  'Weather.dbc': Definitions.weather,
  'WowError_Strings.dbc': Definitions.wowErrorStrings,
  'ZoneIntroMusicTable.dbc': Definitions.zoneIntroMusicTable,
  'ZoneMusic.dbc': Definitions.zoneMusic,

  // quest
  'QuestFactionReward.dbc': Definitions.questFactionReward,
  'QuestInfo.dbc': Definitions.questInfo,
  'QuestSort.dbc': Definitions.questSort,
  'QuestXP.dbc': Definitions.questXP,

  // skill
  'SkillCostsData.dbc': Definitions.skillCostsData,
  'SkillLine.dbc': Definitions.skillLine,
  'SkillLineAbility.dbc': Definitions.skillLineAbility,
  'SkillLineCategory.dbc': Definitions.skillLineCategory,
  'SkillRaceClassInfo.dbc': Definitions.skillRaceClassInfo,
  'SkillTiers.dbc': Definitions.skillTiers,

  // sound
  'SoundAmbience.dbc': Definitions.soundAmbience,
  'SoundEmitters.dbc': Definitions.soundEmitters,
  'SoundEntries.dbc': Definitions.soundEntries,
  'SoundEntriesAdvanced.dbc': Definitions.soundEntriesAdvanced,
  'SoundFilter.dbc': Definitions.soundFilter,
  'SoundFilterElem.dbc': Definitions.soundFilterElem,
  'SoundProviderPreferences.dbc': Definitions.soundProviderPreferences,
  'SoundSamplePreferences.dbc': Definitions.soundSamplePreferences,
  'SoundWaterType.dbc': Definitions.soundWaterType,

  // spell
  'GlyphProperties.dbc': Definitions.glyphProperties,
  'GlyphSlot.dbc': Definitions.glyphSlot,
  'Spell.dbc': Definitions.spell,
  'SpellCastTimes.dbc': Definitions.spellCastTimes,
  'SpellCategory.dbc': Definitions.spellCategory,
  'SpellChainEffects.dbc': Definitions.spellChainEffects,
  'SpellDescriptionVariables.dbc': Definitions.spellDescriptionVariables,
  'SpellDifficulty.dbc': Definitions.spellDifficulty,
  'SpellDispelType.dbc': Definitions.spellDispelType,
  'SpellDuration.dbc': Definitions.spellDuration,
  'SpellEffectCameraShakes.dbc': Definitions.spellEffectCameraShakes,
  'SpellFocusObject.dbc': Definitions.spellFocusObject,
  'SpellIcon.dbc': Definitions.spellIcon,
  'SpellItemEnchantment.dbc': Definitions.spellItemEnchantment,
  'SpellItemEnchantmentCondition.dbc': Definitions.spellItemEnchantmentCondition,
  'SpellMechanic.dbc': Definitions.spellMechanic,
  'SpellMissile.dbc': Definitions.spellMissile,
  'SpellMissileMotion.dbc': Definitions.spellMissileMotion,
  'SpellRadius.dbc': Definitions.spellRadius,
  'SpellRange.dbc': Definitions.spellRange,
  'SpellRuneCost.dbc': Definitions.spellRuneCost,
  'SpellShapeshiftForm.dbc': Definitions.spellShapeshiftForm,
  'SpellVisual.dbc': Definitions.spellVisual,
  'SpellVisualEffectName.dbc': Definitions.spellVisualEffectName,
  'SpellVisualKit.dbc': Definitions.spellVisualKit,
  'SpellVisualKitAreaModel.dbc': Definitions.spellVisualKitAreaModel,
  'SpellVisualKitModelAttach.dbc': Definitions.spellVisualKitModelAttach,
  'SpellVisualPrecastTransitions.dbc': Definitions.spellVisualPrecastTransitions,
  'TotemCategory.dbc': Definitions.totemCategory,

  // talent
  'Talent.dbc': Definitions.talent,
  'TalentTab.dbc': Definitions.talentTab,

  // taxi
  'TaxiNodes.dbc': Definitions.taxiNodes,
  'TaxiPath.dbc': Definitions.taxiPath,
  'TaxiPathNode.dbc': Definitions.taxiPathNode,

  // vehicle
  'Vehicle.dbc': Definitions.vehicle,
  'VehicleSeat.dbc': Definitions.vehicleSeat,
  'VehicleUIIndSeat.dbc': Definitions.vehicleUIIndSeat,
  'VehicleUIIndicator.dbc': Definitions.vehicleUIIndicator,

  // gt (game tables) - misc 分类
  'gtBarberShopCostBase.dbc': Definitions.gtbarberShopCostBase,
  'gtChanceToMeleeCrit.dbc': Definitions.gtchanceToMeleeCrit,
  'gtChanceToMeleeCritBase.dbc': Definitions.gtchanceToMeleeCritBase,
  'gtChanceToSpellCrit.dbc': Definitions.gtchanceToSpellCrit,
  'gtChanceToSpellCritBase.dbc': Definitions.gtchanceToSpellCritBase,
  'gtCombatRatings.dbc': Definitions.gtcombatRatings,
  'gtNPCManaCostScaler.dbc': Definitions.gtnPCManaCostScaler,
  'gtOCTClassCombatRatingScalar.dbc': Definitions.gtoCTClassCombatRatingScalar,
  'gtOCTRegenHP.dbc': Definitions.gtoCTRegenHP,
  'gtOCTRegenMP.dbc': Definitions.gtoCTRegenMP,
  'gtRegenHPPerSpt.dbc': Definitions.gtregenHPPerSpt,
  'gtRegenMPPerSpt.dbc': Definitions.gtregenMPPerSpt,
};

/// DBC 文件目录路径
const dbcDirPath = r'D:\Simulators\AzerothCore\core\dbc';

void main() {
  final dbcDir = Directory(dbcDirPath);

  group('DBC 文件集成测试', () {
    setUpAll(() {
      if (!dbcDir.existsSync()) {
        print('跳过 DBC 集成测试: 目录不存在 $dbcDirPath');
      }
    });

    test('DBC 目录存在且包含文件', () {
      if (!dbcDir.existsSync()) {
        markTestSkipped('DBC 目录不存在: $dbcDirPath');
        return;
      }

      final dbcFiles = dbcDir
          .listSync()
          .whereType<File>()
          .where((f) => f.path.toLowerCase().endsWith('.dbc'))
          .toList();

      expect(dbcFiles, isNotEmpty, reason: 'DBC 目录应包含 .dbc 文件');
      print('发现 ${dbcFiles.length} 个 DBC 文件');
    });

    test('已定义格式数量检查', () {
      expect(
        dbcDefinitions.length,
        greaterThanOrEqualTo(200),
        reason: '应该定义至少 200 个 DBC 格式',
      );
      print('已定义 ${dbcDefinitions.length} 个 DBC 格式');
    });

    // 为每个已定义的 DBC 文件创建单独的测试
    for (final entry in dbcDefinitions.entries) {
      final fileName = entry.key;
      final definition = entry.value;

      test('读取 $fileName', () {
        if (!dbcDir.existsSync()) {
          markTestSkipped('DBC 目录不存在');
          return;
        }

        final file = File('$dbcDirPath/$fileName');
        if (!file.existsSync()) {
          markTestSkipped('文件不存在: $fileName');
          return;
        }

        // 尝试加载 DBC 文件
        final loader = DbcLoader(file.path, definition.format);

        // 验证基本属性
        expect(loader.recordCount, greaterThanOrEqualTo(0));

        // 如果有记录，验证第一条记录可以被读取
        if (loader.recordCount > 0) {
          final firstRecord = loader.records.first;
          // 尝试转换为 Map 验证所有字段访问
          final map = firstRecord.toMap();
          expect(map, isNotEmpty);
        }
      });
    }
  });

  group('DBC 文件批量读取汇总', () {
    test('批量读取所有已定义的 DBC 文件', () {
      if (!dbcDir.existsSync()) {
        markTestSkipped('DBC 目录不存在: $dbcDirPath');
        return;
      }

      int successCount = 0;
      int failCount = 0;
      int skipCount = 0;
      final List<String> failures = [];

      for (final entry in dbcDefinitions.entries) {
        final fileName = entry.key;
        final definition = entry.value;
        final file = File('$dbcDirPath/$fileName');

        if (!file.existsSync()) {
          skipCount++;
          continue;
        }

        try {
          final loader = DbcLoader(file.path, definition.format);
          final recordCount = loader.records.length;

          // 验证记录可读
          if (recordCount > 0) {
            loader.records.first.toMap();
          }

          successCount++;
        } catch (e) {
          failCount++;
          failures.add('$fileName: $e');
        }
      }

      print('');
      print('=' * 60);
      print('DBC 文件批量读取结果');
      print('=' * 60);
      print('成功: $successCount');
      print('失败: $failCount');
      print('跳过 (文件不存在): $skipCount');

      if (failures.isNotEmpty) {
        print('');
        print('失败详情:');
        for (final f in failures) {
          print('  - $f');
        }
      }

      // 断言：所有存在的文件都应该成功读取
      expect(failCount, equals(0), reason: '所有 DBC 文件应该都能成功读取');
    });
  });
}
