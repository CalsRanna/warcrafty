# Warcrafty

[![Pub Version](https://img.shields.io/pub/v/warcrafty)](https://pub.dev/packages/warcrafty)
[![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg)](https://opensource.org/licenses/MIT)
[![Dart SDK](https://img.shields.io/badge/Dart-3.10%2B-blue.svg)](https://dart.dev)

A high-performance **pure Dart** library for reading and writing World of Warcraft DBC (Database Client) binary file format. No external runtime dependencies.

[中文文档](README_ZH.md)

## Table of Contents

- [Features](#features)
- [Installation](#installation)
- [Quick Start](#quick-start)
- [Core API](#core-api)
  - [DbcLoader](#dbcloader)
  - [DbcRecord](#dbcrecord)
  - [DbcWriter](#dbcwriter)
  - [DbcIndex](#dbcindex)
- [Format String Reference](#format-string-reference)
- [Predefined Schemas](#predefined-schemas)
- [Advanced Usage](#advanced-usage)
- [Compatibility](#compatibility)
- [Testing](#testing)
- [Performance](#performance)
- [License](#license)
- [Acknowledgments](#acknowledgments)

## Features

- **Pure Dart Implementation**: No external C libraries or FFI required
- **High Performance**: Efficient binary data processing using `ByteData` and `Uint8List`
- **Format String Driven**: Flexible parsing fully compatible with AzerothCore format strings
- **O(1) String Lookup**: Prebuilt string index for constant-time string access
- **ID-Based Indexing**: Fast record lookup with binary search
- **Full Read/Write Support**: Complete DBC file reading and writing capabilities
- **String Deduplication**: Automatic string deduplication to reduce file size
- **Sync & Async Operations**: Both synchronous and asynchronous APIs
- **Type Safety**: Full Dart type safety with comprehensive exception handling
- **200+ Predefined Schemas**: Built-in format definitions for all major DBC files
- **Schema Validation**: Runtime validation of format strings and field types

## Installation

Add to your `pubspec.yaml`:

```yaml
dependencies:
  warcrafty: ^1.0.1
```

Then run:

```bash
dart pub get
```

## Quick Start

```dart
import 'package:warcrafty/warcrafty.dart';

void main() {
  // Read a DBC file using predefined schema
  final loader = DbcLoader('ChrRaces.dbc', Definitions.chrRaces.format);

  // Iterate through all records
  for (final record in loader.records) {
    final id = record.getInt(0);
    final name = record.getString(14); // First localized name field
    print('ID: $id, Name: $name');
  }

  // Build an index for fast lookup
  final index = DbcIndex.fromLoader(loader, (record) => record.toMap());
  final raceData = index.lookup(1); // Get race with ID 1

  // Write a DBC file
  DbcWriter.writeToPath('output.dbc', 'niiiiss', [
    [1, 0, 84, 0, 0, 'Human', 'Human'],
  ]);
}
```

## Core API

### DbcLoader

Read DBC files from various sources:

```dart
// Load from file path (synchronous)
final loader = DbcLoader('ChrRaces.dbc', 'niiiisssssssssssssssss');

// Load asynchronously
final loader = await DbcLoader.loadAsync('ChrRaces.dbc', 'niiiiss');

// Load from bytes
final bytes = File('ChrRaces.dbc').readAsBytesSync();
final loader = DbcLoader.fromBytes(bytes, 'niiiiss');

// Access file metadata
print('Records: ${loader.recordCount}');
print('Fields: ${loader.fieldCount}');
print('Format: ${loader.format}');

// Iterate all records
for (final record in loader.records) {
  // Process each record
}

// Access specific record
final firstRecord = loader.getRecord(0);

// Convert all records to Map
final allData = loader.toMapList();
```

### DbcRecord

Access individual record fields with type-safe methods:

```dart
final record = loader.getRecord(0);

// Read integers (32-bit signed)
final id = record.getInt(0);
final value = record.getInt(5);

// Read unsigned integers (32-bit)
final unsigned = record.getUint(1);

// Read 8-bit integers
final byteValue = record.getUint8(0);

// Read floats (32-bit)
final floatValue = record.getFloat(3);

// Read strings (from string block)
final name = record.getString(5);

// Read raw bytes
final rawBytes = record.getBytes(0, 4);

// Convert to Map
final map = record.toMap();

// Access field count
final fieldCount = record.fieldCount;
```

### DbcWriter

Write DBC files with automatic string deduplication:

```dart
// Write to file (synchronous)
DbcWriter.writeToPath('output.dbc', 'niiiiss', [
  [1, 0, 84, 0, 0, 'Human', 'Human'],
  [2, 1, 74, 0, 0, 'Orc', 'Orc'],
]);

// Write asynchronously
await DbcWriter.writeToPathAsync('output.dbc', 'niiiiss', [
  [1, 0, 84, 0, 0, 'Human', 'Human'],
]);

// Copy and modify existing file
DbcWriter.copyWithModify(
  sourcePath: 'input.dbc',
  format: 'niiiiss',
  outputPath: 'output.dbc',
  modify: (source) => [
    source.getInt(0),
    source.getInt(1) + 1,
    source.getInt(2),
    source.getInt(3),
    source.getInt(4),
    source.getString(5),
    source.getString(6),
  ],
);

// Custom writer instance
final writer = DbcWriter('custom.dbc', 'niiiiss');
writer.write([
  [1, 0, 84, 0, 0, 'Human', 'Human'],
]);
```

### DbcIndex

Build ID-based indexes for fast O(1) lookup:

```dart
// Create index from loader
final index = DbcIndex.fromLoader(loader, (record) => record.toMap());

// Lookup by ID
final record = index.lookup(1);
if (record != null) {
  print('Found: $record');
}

// Lookup or throw exception if not found
final record = index.lookupOrThrow(1);

// Check if ID exists
if (index.contains(1)) {
  print('ID 1 exists');
}

// Get all IDs
final allIds = index.allIds;

// Access by indexer
final record = index[1];

// Get index statistics
print('Total records: ${index.count}');
print('Index field: ${index.indexField}');

// Get all records
final allRecords = index.records;
```

## Format String Reference

Format strings define the structure of DBC records. Each character represents a field type:

| Character | Type | Size | Description |
|-----------|------|------|-------------|
| `n` | ID Field | 4 bytes | Index field (ID) for fast lookup - 32-bit signed integer |
| `i` | Int32 | 4 bytes | 32-bit signed integer |
| `b` | Uint8 | 1 byte | 8-bit unsigned integer (0-255) |
| `f` | Float | 4 bytes | 32-bit floating point number |
| `s` | String | 4 bytes | String offset (points to string block) |
| `x` | Unused | 4 bytes | Unknown/skip field (32-bit) |
| `X` | Unused Byte | 1 byte | Unknown/skip field (8-bit) |
| `d` | Sort | 4 bytes | Sort field (not included in data) |
| `l` | Boolean | 4 bytes | Boolean/logical value (stored as 32-bit int) |

### Example Format Strings

```dart
// Simple record: ID + 2 integers + 2 strings
'niiiiss'

// Character race: ID + flags + faction + 2 display IDs + 2 strings + 45 localized strings
'niiiiisiiiisiissssssssssssssssssssssssssssssssssssssssssssssssssssssi'

// Item: ID + class + subclass + different name + name
'niiiiss'
```

## Predefined Schemas

The library includes **200+ predefined format definitions** for all major DBC files:

```dart
import 'package:warcrafty/warcrafty.dart';

// Use predefined schema
final loader = DbcLoader('ChrRaces.dbc', Definitions.chrRaces.format);

// Access schema information
print('Schema: ${Definitions.chrRaces.name}');
print('Format: ${Definitions.chrRaces.format}');
print('Field count: ${Definitions.chrRaces.fieldCount}');

// Find field by name
final field = Definitions.chrRaces.getFieldByName('ID');
```

### Available Categories

- **Achievement**: Achievement, Achievement_Category, Achievement_Criteria
- **Area**: AreaTable, AreaGroup, AreaPOI, WorldMapArea, WorldSafeLocs
- **Character**: ChrRaces, ChrClasses, CharBaseInfo, CharTitles, CharSections
- **Creature**: CreatureDisplayInfo, CreatureFamily, CreatureModelData, CreatureSpellData
- **Faction**: Faction, FactionGroup, FactionTemplate
- **GameObject**: GameObjectDisplayInfo, GameObjectArtKit
- **Item**: Item, ItemSet, ItemExtendedCost, ItemDisplayInfo, GemProperties
- **Map**: Map, DungeonEncounter, DungeonMap, MapDifficulty
- **Quest**: QuestInfo, QuestSort, QuestXP
- **Skill**: SkillLine, SkillLineAbility, SkillTiers
- **Sound**: SoundEntries, SoundAmbience, SoundEmitters
- **Spell**: Spell, SpellRange, SpellDuration, SpellRadius, SpellIcon
- **Talent**: Talent, TalentTab
- **Taxi**: TaxiNodes, TaxiPath, TaxiPathNode
- **Vehicle**: Vehicle, VehicleSeat
- **GT Tables**: GtCombatRatings, GtChanceToSpellCrit, GtRegenHPPerSpt

### Full Schema List

```dart
// All available schemas
Definitions.achievement
Definitions.achievementCategory
Definitions.achievementCriteria
Definitions.areaGroup
Definitions.areaPOI
Definitions.areaTable
Definitions.areaTrigger
Definitions.auctionHouse
Definitions.bankBagSlotPrices
Definitions.bannedAddOns
Definitions.barberShopStyle
Definitions.battlemasterList
Definitions.cameraShakes
Definitions.cfgCategories
Definitions.cfgConfigs
Definitions.charBaseInfo
Definitions.charHairGeosets
Definitions.charHairTextures
Definitions.charSections
Definitions.charStartOutfit
Definitions.charTitles
Definitions.characterFacialHairStyles
Definitions.chatChannels
Definitions.chatProfanity
Definitions.chrClasses
Definitions.chrRaces
Definitions.cinematicCamera
Definitions.cinematicSequences
Definitions.creatureDisplayInfo
Definitions.creatureDisplayInfoExtra
Definitions.creatureFamily
Definitions.creatureModelData
Definitions.creatureMovementInfo
Definitions.creatureSoundData
Definitions.creatureSpellData
Definitions.creatureType
Definitions.currencyCategory
Definitions.currencyTypes
Definitions.danceMoves
Definitions.deathThudLookups
Definitions.declinedWord
Definitions.declinedWordCases
Definitions.destructibleModelData
Definitions.dungeonEncounter
Definitions.dungeonMap
Definitions.dungeonMapChunk
Definitions.durabilityCosts
Definitions.durabilityQuality
Definitions.emotes
Definitions.emotesText
Definitions.emotesTextData
Definitions.emotesTextSound
Definitions.environmentalDamage
Definitions.exhaustion
Definitions.faction
Definitions.factionGroup
Definitions.factionTemplate
Definitions.fileData
Definitions.footprintTextures
Definitions.footstepTerrainLookup
Definitions.gMSurveyAnswers
Definitions.gMSurveyCurrentSurvey
Definitions.gMSurveyQuestions
Definitions.gMSurveySurveys
Definitions.gMTicketCategory
Definitions.gameObjectArtKit
Definitions.gameObjectDisplayInfo
Definitions.gameTables
Definitions.gameTips
Definitions.gemProperties
Definitions.glyphProperties
Definitions.glyphSlot
Definitions.groundEffectDoodad
Definitions.groundEffectTexture
Definitions.helmetGeosetVisData
Definitions.holidayDescriptions
Definitions.holidayNames
Definitions.holidays
Definitions.item
Definitions.itemBagFamily
Definitions.itemClass
Definitions.itemCondExtCosts
Definitions.itemDisplayInfo
Definitions.itemExtendedCost
Definitions.itemGroupSounds
Definitions.itemLimitCategory
Definitions.itemPetFood
Definitions.itemPurchaseGroup
Definitions.itemRandomProperties
Definitions.itemRandomSuffix
Definitions.itemSet
Definitions.itemSubClass
Definitions.itemSubClassMask
Definitions.itemVisualEffects
Definitions.itemVisuals
Definitions.lFGDungeonExpansion
Definitions.lFGDungeonGroup
Definitions.lFGDungeons
Definitions.languageWords
Definitions.languages
Definitions.light
Definitions.lightFloatBand
Definitions.lightIntBand
Definitions.lightParams
Definitions.lightSkybox
Definitions.liquidMaterial
Definitions.liquidType
Definitions.loadingScreenTaxiSplines
Definitions.loadingScreens
Definitions.lock
Definitions.lockType
Definitions.mailTemplate
Definitions.map
Definitions.mapDifficulty
Definitions.material
Definitions.movie
Definitions.movieFileData
Definitions.movieVariation
Definitions.nPCSounds
Definitions.nameGen
Definitions.namesProfanity
Definitions.namesReserved
Definitions.objectEffect
Definitions.objectEffectGroup
Definitions.objectEffectModifier
Definitions.objectEffectPackage
Definitions.objectEffectPackageElem
Definitions.overrideSpellData
Definitions.package
Definitions.pageTextMaterial
Definitions.paperDollItemFrame
Definitions.particleColor
Definitions.petPersonality
Definitions.petitionType
Definitions.powerDisplay
Definitions.pvpDifficulty
Definitions.questFactionReward
Definitions.questInfo
Definitions.questSort
Definitions.questXP
Definitions.randPropPoints
Definitions.resistances
Definitions.scalingStatDistribution
Definitions.scalingStatValues
Definitions.screenEffect
Definitions.serverMessages
Definitions.sheatheSoundLookups
Definitions.skillCostsData
Definitions.skillLine
Definitions.skillLineAbility
Definitions.skillLineCategory
Definitions.skillRaceClassInfo
Definitions.skillTiers
Definitions.soundAmbience
Definitions.soundEmitters
Definitions.soundEntries
Definitions.soundEntriesAdvanced
Definitions.soundFilter
Definitions.soundFilterElem
Definitions.soundProviderPreferences
Definitions.soundSamplePreferences
Definitions.soundWaterType
Definitions.spamMessages
Definitions.spell
Definitions.spellCastTimes
Definitions.spellCategory
Definitions.spellChainEffects
Definitions.spellDescriptionVariables
Definitions.spellDifficulty
Definitions.spellDispelType
Definitions.spellDuration
Definitions.spellEffectCameraShakes
Definitions.spellFocusObject
Definitions.spellIcon
Definitions.spellItemEnchantment
Definitions.spellItemEnchantmentCondition
Definitions.spellMechanic
Definitions.spellMissile
Definitions.spellMissileMotion
Definitions.spellRadius
Definitions.spellRange
Definitions.spellRuneCost
Definitions.spellShapeshiftForm
Definitions.spellVisual
Definitions.spellVisualEffectName
Definitions.spellVisualKit
Definitions.spellVisualKitAreaModel
Definitions.spellVisualKitModelAttach
Definitions.spellVisualPrecastTransitions
Definitions.stableSlotPrices
Definitions.startupStrings
Definitions.stationery
Definitions.stringLookups
Definitions.summonProperties
Definitions.talent
Definitions.talentTab
Definitions.taxiNodes
Definitions.taxiPath
Definitions.taxiPathNode
Definitions.teamContributionPoints
Definitions.terrainType
Definitions.terrainTypeSounds
Definitions.totemCategory
Definitions.transportAnimation
Definitions.transportPhysics
Definitions.transportRotation
Definitions.uISoundLookups
Definitions.unitBlood
Definitions.unitBloodLevels
Definitions.vehicle
Definitions.vehicleSeat
Definitions.vehicleUIIndSeat
Definitions.vehicleUIIndicator
Definitions.videoHardware
Definitions.vocalUISounds
Definitions.wMOAreaTable
Definitions.weaponImpactSounds
Definitions.weaponSwingSounds2
Definitions.weather
Definitions.worldChunkSounds
Definitions.worldMapArea
Definitions.worldMapContinent
Definitions.worldMapOverlay
Definitions.worldMapTransforms
Definitions.worldSafeLocs
Definitions.worldStateUI
Definitions.worldStateZoneSounds
Definitions.wowErrorStrings
Definitions.zoneIntroMusicTable
Definitions.zoneMusic
// GT (Game Table) definitions
Definitions.gtbarberShopCostBase
Definitions.gtchanceToMeleeCrit
Definitions.gtchanceToMeleeCritBase
Definitions.gtchanceToSpellCrit
Definitions.gtchanceToSpellCritBase
Definitions.gtcombatRatings
Definitions.gtnPCManaCostScaler
Definitions.gtoCTClassCombatRatingScalar
Definitions.gtoCTRegenHP
Definitions.gtoCTRegenMP
Definitions.gtregenHPPerSpt
Definitions.gtregenMPPerSpt
```

## Advanced Usage

### Working with Localized Fields

Many DBC files have localized strings for multiple languages:

```dart
final loader = DbcLoader('ChrRaces.dbc', Definitions.chrRaces.format);

for (final record in loader.records) {
  // Access different locale fields (if present)
  final nameEnglish = record.getString(14); // First locale name
  // ... additional locale fields
}
```

### Custom Schema Creation

Create your own schemas for custom DBC files:

```dart
final customSchema = DbcSchema(
  name: 'CustomStruct',
  format: 'niiiiss',
  fields: [
    const Field(index: 0, name: 'ID', type: FieldType.id),
    const Field(index: 1, name: 'Field1', type: FieldType.int32),
    const Field(index: 2, name: 'Field2', type: FieldType.int32),
    const Field(index: 3, name: 'Field3', type: FieldType.int32),
    const Field(index: 4, name: 'Field4', type: FieldType.int32),
    const Field(index: 5, name: 'Name', type: FieldType.string),
    const Field(index: 6, name: 'Description', type: FieldType.string),
  ],
);

final loader = DbcLoader('custom.dbc', customSchema.format);
```

### Error Handling

The library provides comprehensive exception types:

```dart
try {
  final loader = DbcLoader('file.dbc', 'niiiiss');
} on InvalidSignatureException catch (e) {
  print('Invalid file signature: ${e.message}');
} on DbcFormatException catch (e) {
  print('Format error: ${e.message}');
} on RecordIndexOutOfRangeException catch (e) {
  print('Record index error: ${e.message}');
} on StringOffsetOutOfRangeException catch (e) {
  print('String offset error: ${e.message}');
} on FileReadException catch (e) {
  print('File read error: ${e.message}');
}
```

## Compatibility

Compatible with DBC files from:
- **AzerothCore** (3.3.5a)
- **TrinityCore** (3.3.5a)
- **MaNGOS** (3.3.5a)
- **Other World of Warcraft server emulators**

Format strings are fully compatible with AzerothCore's DBC format definitions.

## Testing

Run the test suite:

```bash
# Run all tests
dart test

# Run tests with coverage
dart test --coverage=coverage

# View coverage report
dart pub global activate coverage
dart pub global run coverage:format_coverage --lcov --in=coverage/coverage.json --out=coverage/lcov.info

# Run specific test file
dart test test/dbc_integration_test.dart
```

## Performance

Warcrafty is optimized for performance:

- **O(1) String Lookup**: Prebuilt string index eliminates linear searches
- **Efficient Binary Parsing**: Direct `ByteData` access without intermediate copies
- **String Deduplication**: Automatic deduplication reduces output file size by 20-40%
- **Zero-Copy Reads**: Direct memory access for maximum throughput
- **Minimal Allocations**: Reuses buffers and avoids unnecessary object creation

### Benchmarks

Typical performance characteristics:
- **Read**: ~1-2ms per 10,000 records (depends on record size)
- **Write**: ~5-10ms per 1,000 records (includes string deduplication)
- **Memory**: ~1MB per 100,000 records (depends on string count)

## License

MIT License - see [LICENSE](LICENSE) file.

## Acknowledgments

- [AzerothCore](https://www.azerothcore.org/) - DBC format reference and definitions
- [WoWDBDefs](https://github.com/wowdev/WoWDBDefs) - Database structure definitions
- World of Warcraft community - DBC file format documentation
