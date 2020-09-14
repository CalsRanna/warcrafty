const achievement = require("./achievement");
const achievementCategory = require("./achievement-category");
const achievementCriteria = require("./achievement-criteria");
const animationData = require("./animation-data");
const areaGroup = require("./area-group");
const areaPOI = require("./area-poi");
const areaTable = require("./area-table");
const areaTrigger = require("./area-trigger");
const attackAnimKits = require("./attack-anim-kits");
const attackAnimTypes = require("./attack-anim-types");
const auctionHouse = require("./auction-house");
const bankBagSlotPrices = require("./bank-bag-slot-prices");
const bannedAddOns = require("./banned-add-ons");
const barberShopStyle = require("./barber-shop-style");
const battlemasterList = require("./battlemaster-list");
const cameraShakes = require("./camera-shakes");
const cfgCategories = require("./cfg-categories");
const cfgConfigs = require("./cfg-configs");
const characterFacialHairStyles = require("./character-facial-hair-styles");
const charBaseInfo = require("./char-base-info");
const charHairGeosets = require("./char-hair-geosets");
const charHairTextures = require("./char-hair-textures");
const charSections = require("./char-sections");
const charStartOutfit = require("./char-start-outfit");
const charTitles = require("./char-titles");
const chatChannels = require("./chat-channels");
const chatProfanity = require("./chat-profanity");
const chrClasses = require("./chr-classes");
const chrRaces = require("./chr-races");
const cinematicCamera = require("./cinematic-camera");
const cinematicSequences = require("./cinematic-sequences");
const creatureDisplayInfo = require("./creature-display-info");
const creatureDisplayInfoExtra = require("./creature-display-info-extra");
const creatureFamily = require("./creature-family");
const creatureModelData = require("./creature-model-data");
const creatureMovementInfo = require("./creature-movement-info");
const creatureSoundData = require("./creature-sound-data");
const creatureSpellData = require("./creature-spell-data");
const creatureType = require("./creature-type");
const currencyCategory = require("./currency-category");
const currencyTypes = require("./currency-types");
const danceMoves = require("./dance-moves");
const deathThudLookups = require("./death-thud-lookups");
const declinedWord = require("./declined-word");
const declinedWordCases = require("./declined-word-cases");
const destructibleModelData = require("./destructible-model-data");
const dungeonEncounter = require("./dungeon-encounter");
const dungeonMap = require("./dungeon-map");
const dungeonMapChunk = require("./dungeon-map-chunk");
const durabilityCosts = require("./durability-costs");
const durabilityQuality = require("./durability-quality");
const emotes = require("./emotes");
const emotesText = require("./emotes-text");
const emotesTextData = require("./emotes-text-data");
const emotesTextSound = require("./emotes-text-sound");
const environmentalDamage = require("./environmental-damage");
const exhaustion = require("./exhaustion");
const faction = require("./faction");
const factionGroup = require("./faction-group");
const factionTemplate = require("./faction-template");
const fileData = require("./file-data");
const footprintTextures = require("./footprint-textures");
const footstepTerrainLookup = require("./footstep-terrain-lookup");
const gameObjectArtKit = require("./game-object-art-kit");
const gameObjectDisplayInfo = require("./game-object-display-info");
const gameTables = require("./game-tables");
const gameTips = require("./game-tips");
const gemProperties = require("./gem-properties");
const glyphProperties = require("./glyph-properties");
const glyphSlot = require("./glyph-slot");
const gmSurveyAnswers = require("./gm-survey-answers");
const gmSurveyCurrentSurvey = require("./gm-survey-current-survey");
const gmSurveyQuestions = require("./gm-survey-questions");
const gmSurveySurveys = require("./gm-survey-surveys");
const gmTicketCategory = require("./gm-ticket-category");
const groundEffectDoodad = require("./ground-effect-doodad");
const groundEffectTexture = require("./ground-effect-texture");
const gtBarberShopCostBase = require("./gt-barber-shop-cost-base");
const gtChanceToMeleeCrit = require("./gt-chance-to-melee-crit");
const gtChanceToMeleeCritBase = require("./gt-chance-to-melee-crit-base");
const gtChanceToSpellCrit = require("./gt-chance-to-spell-crit");
const gtChanceToSpellCritBase = require("./gt-chance-to-spell-crit-base");
const gtCombatRatings = require("./gt-combat-ratings");
const gtNPCManaCostScaler = require("./gt-npc-mana-cost-scaler");
const gtOCTClassCombatRatingScalar = require("./gt-oct-class-combat-rating-scalar");
const gtOCTRegenHP = require("./gt-oct-regen-hp");
const gtOCTRegenMP = require("./gt-oct-regen-mp");
const gtRegenHPPerSpt = require("./gt-regen-hp-per-spt");
const gtRegenMPPerSpt = require("./gt-regen-mp-per-spt");
const helmetGeosetVisData = require("./helmet-geoset-vis-data");
const holidayDescriptions = require("./holiday-descriptions");
const holidayNames = require("./holiday-names");
const holidays = require("./holidays");
const item = require("./item");
const itemBagFamily = require("./item-bag-family");
const itemClass = require("./item-class");
const itemCondExtCosts = require("./item-cond-ext-costs");
const itemDisplayInfo = require("./item-display-info");
const itemExtendedCost = require("./item-extended-cost");
const itemGroupSounds = require("./item-group-sounds");
const itemLimitCategory = require("./item-limit-category");
const itemPetFood = require("./item-pet-food");
const itemPurchaseGroup = require("./item-purchase-group");
const itemRandomProperties = require("./item-random-properties");
const itemRandomSuffix = require("./item-random-suffix");
const itemSet = require("./item-set");
const itemSubClass = require("./item-sub-class");
const itemSubClassMask = require("./item-sub-class-mask");
const itemVisualEffects = require("./item-visual-effects");
const itemVisuals = require("./item-visuals");
const languages = require("./languages");
const languageWords = require("./language-words");
const lfgDungeonExpansion = require("./lfg-dungeon-expansion");
const lfgDungeonGroup = require("./lfg-dungeon-group");
const lfgDungeons = require("./lfg-dungeons");
const light = require("./light");
const lightFloatBand = require("./light-float-band");
const lightIntBand = require("./light-int-band");
const lightParams = require("./light-params");
const lightSkybox = require("./light-skybox");
const liquidMaterial = require("./liquid-material");
const liquidType = require("./liquid-type");
const loadingScreens = require("./loading-screens");
const loadingScreenTaxiSplines = require("./loading-screen-taxi-splines");
const lock = require("./lock");
const lockType = require("./lock-type");
const mailTemplate = require("./mail-template");
const map = require("./map");
const mapDifficulty = require("./map-difficulty");
const material = require("./material");
const movie = require("./movie");
const movieFileData = require("./movie-file-data");
const movieVariation = require("./movie-variation");
const nameGen = require("./name-gen");
const namesProfanity = require("./names-profanity");
const namesReserved = require("./names-reserved");
const npcSounds = require("./npc-sounds");
const objectEffect = require("./object-effect");
const objectEffectGroup = require("./object-effect-group");
const objectEffectModifier = require("./object-effect-modifier");
const objectEffectPackage = require("./object-effect-package");
const objectEffectPackageElem = require("./object-effect-package-elem");
const overrideSpellData = require("./override-spell-data");
const package = require("./package");
const pageTextMaterial = require("./page-text-material");
const paperDollItemFrame = require("./paper-doll-item-frame");
const particleColor = require("./particle-color");
const petitionType = require("./petition-type");
const petPersonality = require("./pet-personality");
const powerDisplay = require("./power-display");
const pvpDifficulty = require("./pvp-difficulty");
const questFactionReward = require("./quest-faction-reward");
const questInfo = require("./quest-info");
const questSort = require("./quest-sort");
const questXP = require("./quest-xp");
const randPropPoints = require("./rand-prop-points");
const resistances = require("./resistances");
const scalingStatDistribution = require("./scaling-stat-distribution");
const scalingStatValues = require("./scaling-stat-values");
const screenEffect = require("./screen-effect");
const serverMessages = require("./server-messages");
const sheatheSoundLookups = require("./sheathe-sound-lookups");
const skillCostsData = require("./skill-costs-data");
const skillLine = require("./skill-line");
const skillLineAbility = require("./skill-line-ability");
const skillLineCategory = require("./skill-line-category");
const skillRaceClassInfo = require("./skill-race-class-info");
const skillTiers = require("./skill-tiers");
const soundAmbience = require("./sound-ambience");
const soundEmitters = require("./sound-emitters");
const soundEntries = require("./sound-entries");
const soundEntriesAdvanced = require("./sound-entries-advanced");
const soundFilter = require("./sound-filter");
const soundFilterElem = require("./sound-filter-elem");
const soundProviderPreferences = require("./sound-provider-preferences");
const soundSamplePreferences = require("./sound-sample-preferences");
const soundWaterType = require("./sound-water-type");
const spamMessages = require("./spam-messages");
const spell = require("./spell");
const spellCastTimes = require("./spell-cast-times");
const spellCategory = require("./spell-category");
const spellChainEffects = require("./spell-chain-effects");
const spellDescriptionVariables = require("./spell-description-variables");
const spellDifficulty = require("./spell-difficulty");
const spellDispelType = require("./spell-dispel-type");
const spellDuration = require("./spell-duration");
const spellEffectCameraShakes = require("./spell-effect-camera-shakes");
const spellFocusObject = require("./spell-focus-object");
const spellIcon = require("./spell-icon");
const spellItemEnchantment = require("./spell-item-enchantment");
const spellItemEnchantmentCondition = require("./spell-item-enchantment-condition");
const spellMechanic = require("./spell-mechanic");
const spellMissile = require("./spell-missile");
const spellMissileMotion = require("./spell-missile-motion");
const spellRadius = require("./spell-radius");
const spellRange = require("./spell-range");
const spellRuneCost = require("./spell-rune-cost");
const spellShapeshiftForm = require("./spell-shapeshift-form");
const spellVisual = require("./spell-visual");
const spellVisualEffectName = require("./spell-visual-effect-name");
const spellVisualKit = require("./spell-visual-kit");
const spellVisualKitAreaModel = require("./spell-visual-kit-area-model");
const spellVisualKitModelAttach = require("./spell-visual-kit-model-attach");
const spellVisualPrecastTransitions = require("./spell-visual-precast-transitions");
const stableSlotPrices = require("./stable-slot-prices");
const startupStrings = require("./startup-strings");
const stationery = require("./stationery");
const stringLookups = require("./string-lookups");
const summonProperties = require("./summon-properties");
const talent = require("./talent");
const talentTab = require("./talent-tab");
const taxiNodes = require("./taxi-nodes");
const taxiPath = require("./taxi-path");
const taxiPathNode = require("./taxi-path-node");
const teamContributionPoints = require("./team-contribution-points");
const terrainType = require("./terrain-type");
const terrainTypeSounds = require("./terrain-type-sounds");
const totemCategory = require("./totem-category");
const transportAnimation = require("./transport-animation");
const transportPhysics = require("./transport-physics");
const transportRotation = require("./transport-rotation");
const uiSoundLookups = require("./ui-sound-lookups");
const unitBlood = require("./unit-blood");
const unitBloodLevels = require("./unit-blood-levels");
const vehicle = require("./vehicle");
const vehicleSeat = require("./vehicle-seat");
const vehicleUIIndicator = require("./vehicle-ui-indicator");
const vehicleUIIndSeat = require("./vehicle-ui-ind-seat");
const videoHardware = require("./video-hardware");
const vocalUISounds = require("./vocal-ui-sounds");
const weaponImpactSounds = require("./weapon-impact-sounds");
const weaponSwingSounds2 = require("./weapon-swing-sounds2");
const weather = require("./weather");
const wmoAreaTable = require("./wmo-area-table");
const worldChunkSounds = require("./world-chunk-sounds");
const worldMapArea = require("./world-map-area");
const worldMapContinent = require("./world-map-continent");
const worldMapOverlay = require("./world-map-overlay");
const worldMapTransforms = require("./world-map-transforms");
const worldSafeLocs = require("./world-safe-locs");
const worldStateUI = require("./world-state-ui");
const worldStateZoneSounds = require("./world-state-zone-sounds");
const wowErrorStrings = require("./wow-error-strings");
const zoneIntroMusicTable = require("./zone-intro-music-table");
const zoneMusic = require("./zone-music");

module.exports = {
  achievement,
  achievementCategory,
  achievementCriteria,
  animationData,
  areaGroup,
  areaPOI,
  areaTable,
  areaTrigger,
  attackAnimKits,
  attackAnimTypes,
  auctionHouse,
  bankBagSlotPrices,
  bannedAddOns,
  barberShopStyle,
  battlemasterList,
  cameraShakes,
  cfgCategories,
  cfgConfigs,
  characterFacialHairStyles,
  charBaseInfo,
  charHairGeosets,
  charHairTextures,
  charSections,
  charStartOutfit,
  charTitles,
  chatChannels,
  chatProfanity,
  chrClasses,
  chrRaces,
  cinematicCamera,
  cinematicSequences,
  creatureDisplayInfo,
  creatureDisplayInfoExtra,
  creatureFamily,
  creatureModelData,
  creatureMovementInfo,
  creatureSoundData,
  creatureSpellData,
  creatureType,
  currencyCategory,
  currencyTypes,
  danceMoves,
  deathThudLookups,
  declinedWord,
  declinedWordCases,
  destructibleModelData,
  dungeonEncounter,
  dungeonMap,
  dungeonMapChunk,
  durabilityCosts,
  durabilityQuality,
  emotes,
  emotesText,
  emotesTextData,
  emotesTextSound,
  environmentalDamage,
  exhaustion,
  faction,
  factionGroup,
  factionTemplate,
  fileData,
  footprintTextures,
  footstepTerrainLookup,
  gameObjectArtKit,
  gameObjectDisplayInfo,
  gameTables,
  gameTips,
  gemProperties,
  glyphProperties,
  glyphSlot,
  gmSurveyAnswers,
  gmSurveyCurrentSurvey,
  gmSurveyQuestions,
  gmSurveySurveys,
  gmTicketCategory,
  groundEffectDoodad,
  groundEffectTexture,
  gtBarberShopCostBase,
  gtChanceToMeleeCrit,
  gtChanceToMeleeCritBase,
  gtChanceToSpellCrit,
  gtChanceToSpellCritBase,
  gtCombatRatings,
  gtNPCManaCostScaler,
  gtOCTClassCombatRatingScalar,
  gtOCTRegenHP,
  gtOCTRegenMP,
  gtRegenHPPerSpt,
  gtRegenMPPerSpt,
  helmetGeosetVisData,
  holidayDescriptions,
  holidayNames,
  holidays,
  item,
  itemBagFamily,
  itemClass,
  itemCondExtCosts,
  itemDisplayInfo,
  itemExtendedCost,
  itemGroupSounds,
  itemLimitCategory,
  itemPetFood,
  itemPurchaseGroup,
  itemRandomProperties,
  itemRandomSuffix,
  itemSet,
  itemSubClass,
  itemSubClassMask,
  itemVisualEffects,
  itemVisuals,
  languages,
  languageWords,
  lfgDungeonExpansion,
  lfgDungeonGroup,
  lfgDungeons,
  light,
  lightFloatBand,
  lightIntBand,
  lightParams,
  lightSkybox,
  liquidMaterial,
  liquidType,
  loadingScreens,
  loadingScreenTaxiSplines,
  lock,
  lockType,
  mailTemplate,
  map,
  mapDifficulty,
  material,
  movie,
  movieFileData,
  movieVariation,
  nameGen,
  namesProfanity,
  namesReserved,
  npcSounds,
  objectEffect,
  objectEffectGroup,
  objectEffectModifier,
  objectEffectPackage,
  objectEffectPackageElem,
  overrideSpellData,
  package,
  pageTextMaterial,
  paperDollItemFrame,
  particleColor,
  petitionType,
  petPersonality,
  powerDisplay,
  pvpDifficulty,
  questFactionReward,
  questInfo,
  questSort,
  questXP,
  randPropPoints,
  resistances,
  scalingStatDistribution,
  scalingStatValues,
  screenEffect,
  serverMessages,
  sheatheSoundLookups,
  skillCostsData,
  skillLine,
  skillLineAbility,
  skillLineCategory,
  skillRaceClassInfo,
  skillTiers,
  soundAmbience,
  soundEmitters,
  soundEntries,
  soundEntriesAdvanced,
  soundFilter,
  soundFilterElem,
  soundProviderPreferences,
  soundSamplePreferences,
  soundWaterType,
  spamMessages,
  spell,
  spellCastTimes,
  spellCategory,
  spellChainEffects,
  spellDescriptionVariables,
  spellDifficulty,
  spellDispelType,
  spellDuration,
  spellEffectCameraShakes,
  spellFocusObject,
  spellIcon,
  spellItemEnchantment,
  spellItemEnchantmentCondition,
  spellMechanic,
  spellMissile,
  spellMissileMotion,
  spellRadius,
  spellRange,
  spellRuneCost,
  spellShapeshiftForm,
  spellVisual,
  spellVisualEffectName,
  spellVisualKit,
  spellVisualKitAreaModel,
  spellVisualKitModelAttach,
  spellVisualPrecastTransitions,
  stableSlotPrices,
  startupStrings,
  stationery,
  stringLookups,
  summonProperties,
  talent,
  talentTab,
  taxiNodes,
  taxiPath,
  taxiPathNode,
  teamContributionPoints,
  terrainType,
  terrainTypeSounds,
  totemCategory,
  transportAnimation,
  transportPhysics,
  transportRotation,
  uiSoundLookups,
  unitBlood,
  unitBloodLevels,
  vehicle,
  vehicleSeat,
  vehicleUIIndicator,
  vehicleUIIndSeat,
  videoHardware,
  vocalUISounds,
  weaponImpactSounds,
  weaponSwingSounds2,
  weather,
  wmoAreaTable,
  worldChunkSounds,
  worldMapArea,
  worldMapContinent,
  worldMapOverlay,
  worldMapTransforms,
  worldSafeLocs,
  worldStateUI,
  worldStateZoneSounds,
  wowErrorStrings,
  zoneIntroMusicTable,
  zoneMusic,
};
