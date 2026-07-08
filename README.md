# Warcrafty

[![Pub Version](https://img.shields.io/pub/v/warcrafty)](https://pub.dev/packages/warcrafty)
[![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg)](https://opensource.org/licenses/MIT)
[![Dart SDK](https://img.shields.io/badge/Dart-3.10%2B-blue.svg)](https://dart.dev)

A high-performance **pure Dart** library for reading and writing World of Warcraft DBC (Database Client) binary files, with optional MPQ archive support via StormLib FFI.

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
- [MPQ Archive Support](#mpq-archive-support)
- [Advanced Usage](#advanced-usage)
- [Compatibility](#compatibility)
- [Testing](#testing)
- [Performance](#performance)
- [License](#license)
- [Acknowledgments](#acknowledgments)

## Features

- **Pure Dart Implementation**: No external C libraries required for DBC operations
- **High Performance**: Efficient binary data processing using `ByteData` and `Uint8List`
- **Format String Driven**: Flexible parsing with explicit Warcrafty and AzerothCore format dialects
- **O(1) String Lookup**: Prebuilt string index for constant-time string access
- **ID-Based Indexing**: Fast record lookup via hash map
- **Full Read/Write Support**: Complete DBC file reading and writing with type validation
- **MPQ Archive Support**: Read and write Blizzard MPQ archives via StormLib FFI
- **String Deduplication**: Automatic string deduplication to reduce file size
- **Sync & Async Operations**: Both synchronous and asynchronous APIs
- **Type Safety**: Full Dart type safety with comprehensive exception handling
- **245 Predefined Schemas**: Built-in format definitions for all major DBC files
- **Schema Validation**: Runtime validation of format strings, field types, and write-time type checking

## Installation

Add to your `pubspec.yaml`:

```yaml
dependencies:
  warcrafty: ^2.0.0
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

  // Build an index for O(1) lookup
  final index = DbcIndex<Map<String, dynamic>>.fromLoader(
    loader,
    (record) => record.toMap(),
  );
  final raceData = index.lookup(1); // Get race with ID 1

  // Write a DBC file with type validation
  DbcWriter.writeToPath('output.dbc', 'niiiiss', [
    [1, 0, 84, 0, 0, 'Human', 'Human'],
  ]);

  // Open an MPQ archive and extract a DBC file
  final mpq = MpqArchive.open('patch-zhCN.MPQ');
  final dbcBytes = mpq.extract(r'DBFilesClient\ChrRaces.dbc');
  final mpqLoader = DbcLoader.fromBytes(dbcBytes, Definitions.chrRaces.format);
  mpq.close();
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

// Read 8-bit signed/unsigned integers
final byteSigned = record.getInt8(0);
final byteUnsigned = record.getUint8(0);

// Read 16-bit signed/unsigned integers
final shortSigned = record.getInt16(0);
final shortUnsigned = record.getUint16(0);

// Read 64-bit signed/unsigned integers
final longSigned = record.getInt64(0);
final longUnsigned = record.getUint64(0);

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
  'input.dbc',
  'niiiiss',
  'output.dbc',
  (source) => [
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

// Type validation on write — these throw WriteException:
//   [1, 'not int', 84, ...]    // String where int expected
//   [1, 300, 84, ...]          // uint8 out of range (0-255)
//   [1, true, 84, ...]         // bool where int expected
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

// Get all records (unmodifiable)
final allRecords = index.records;

// Index is generic — work directly with DbcRecord
final typedIndex = DbcIndex<DbcRecord>.fromLoader(
  loader,
  (r) => r,
);
final spellRecord = typedIndex.lookup(133); // Spell with ID 133
```

## Format String Reference

Format strings define the structure of DBC records. Warcrafty 2.0 supports two explicit dialects:

- `DbcFormatDialect.warcrafty` (default): extended typed dialect with explicit integer widths and signedness.
- `DbcFormatDialect.azerothCore`: compatibility dialect for AzerothCore/TrinityCore `DBCfmt.h` (`x X s f i b d n l`; `i` is treated as `uint32`).

Each character in the default Warcrafty dialect represents a field type:

| Character | Type | Size | Description |
|-----------|------|------|-------------|
| `n` | ID Field | 4 bytes | Index field (ID) for fast lookup - 32-bit signed integer |
| `B` | Int8 | 1 byte | 8-bit signed integer |
| `b` | Uint8 | 1 byte | 8-bit unsigned integer (0-255) |
| `h` | Int16 | 2 bytes | 16-bit signed integer |
| `H` | Uint16 | 2 bytes | 16-bit unsigned integer |
| `i` | Int32 | 4 bytes | 32-bit signed integer |
| `u` | Uint32 | 4 bytes | 32-bit unsigned integer |
| `q` | Int64 | 8 bytes | 64-bit signed integer |
| `Q` | Uint64 | 8 bytes | 64-bit unsigned integer |
| `f` | Float | 4 bytes | 32-bit floating point number |
| `s` | String | 4 bytes | String offset (points to string block) |
| `x` | Unused | 4 bytes | Unknown/skip field (32-bit) |
| `X` | Unused Byte | 1 byte | Unknown/skip field (8-bit) |
| `d` | Sort | 4 bytes | Sort field (not included in data) |
| `l` | Boolean | 4 bytes | Boolean/logical value (stored as 32-bit int) |

> **AzerothCore dialect**: In `DbcFormatDialect.azerothCore` mode, `i` is treated as `uint32` and `b` as `uint8`. Extended characters (`B`, `h`, `H`, `u`, `q`, `Q`) are not valid in this dialect.

### Example Format Strings

```dart
// Simple record: ID + 2 integers + 2 strings
'niiiiss'

// Extended integer widths: ID + int8 + uint8 + int16 + uint16 + int32 + uint32 + int64 + uint64
'nBbhHiuqQ'

// Load an AzerothCore DBCfmt.h-style format string explicitly
final loader = DbcLoader(
  'SpellItemEnchantmentCondition.dbc',
  'nbbbbbxxxxxbbbbbbbbbbiiiiiXXXXX',
  dialect: DbcFormatDialect.azerothCore,
);
```

## Predefined Schemas

The library includes **245 predefined format definitions** for all major DBC files:

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
- **Area**: AreaTable, AreaGroup, AreaPOI, AreaTrigger, WMOAreaTable, WorldMapArea, WorldMapContinent, WorldSafeLocs
- **Character**: ChrRaces, ChrClasses, CharBaseInfo, CharHairGeosets, CharHairTextures, CharSections, CharStartOutfit, CharTitles
- **Creature**: CreatureDisplayInfo, CreatureFamily, CreatureModelData, CreatureMovementInfo, CreatureSpellData, CreatureType
- **Faction**: Faction, FactionGroup, FactionTemplate
- **GameObject**: GameObjectDisplayInfo, GameObjectArtKit
- **Item**: Item, ItemBagFamily, ItemClass, ItemDisplayInfo, ItemExtendedCost, ItemSet, GemProperties
- **Light**: Light, LightFloatBand, LightIntBand, LightParams, LightSkybox
- **Map**: Map, DungeonEncounter, DungeonMap, DungeonMapChunk, LFGDungeons, MapDifficulty
- **Quest**: QuestInfo, QuestSort, QuestXP, QuestFactionReward
- **Skill**: SkillLine, SkillLineAbility, SkillCostsData, SkillRaceClassInfo, SkillTiers
- **Sound**: SoundEntries, SoundAmbience, SoundEmitters, SoundFilter, SoundWaterType
- **Spell**: Spell, SpellCastTimes, SpellDuration, SpellIcon, SpellItemEnchantment, SpellRadius, SpellRange, SpellVisual, GlyphProperties, TotemCategory
- **Talent**: Talent, TalentTab
- **Taxi**: TaxiNodes, TaxiPath, TaxiPathNode
- **Vehicle**: Vehicle, VehicleSeat, VehicleUIIndSeat, VehicleUIIndicator
- **Misc**: AnimationData, AttackAnimKits, Emotes, Holidays, Languages, LoadingScreens, Movie, ScreenEffect, Weather, ZoneMusic
- **GT Tables**: GtBarberShopCostBase, GtChanceToMeleeCrit, GtChanceToSpellCrit, GtCombatRatings, GtRegenHPPerSpt, GtRegenMPPerSpt

### Full Schema List

```dart
// All 245 schemas are accessible as static getters on `Definitions`.
// See lib/src/definition/definition.dart for the complete list.
//
// Some examples:
Definitions.achievement          // Achievement.dbc
Definitions.chrRaces            // ChrRaces.dbc
Definitions.item                // Item.dbc
Definitions.spell               // Spell.dbc
Definitions.map                 // Map.dbc
Definitions.taxiNodes           // TaxiNodes.dbc
Definitions.vehicle             // Vehicle.dbc
Definitions.gtcombatRatings     // gtCombatRatings.dbc
Definitions.animationData       // AnimationData.dbc
Definitions.attackAnimKits      // AttackAnimKits.dbc
```

## MPQ Archive Support

Warcrafty includes optional MPQ archive read/write support via StormLib FFI. This requires the `ffi` package and a StormLib native library on your system.

```dart
import 'package:warcrafty/warcrafty.dart';

// Open an existing archive (read-only by default)
final mpq = MpqArchive.open('patch-zhCN.MPQ');

// Extract a file to memory
final dbcBytes = mpq.extract(r'DBFilesClient\ChrRaces.dbc');
final loader = DbcLoader.fromBytes(dbcBytes, Definitions.chrRaces.format);

// Extract directly to disk
mpq.extractTo(r'DBFilesClient\Item.dbc', '/tmp/Item.dbc');

// Enumerate all files in the archive
for (final file in mpq.files) {
  print(file);
}

mpq.close();

// Open in read-write mode
final rwMpq = MpqArchive.open('patch-zhCN.MPQ', readOnly: false);
rwMpq.removeFile(r'DBFilesClient\old.dbc');
rwMpq.compact(); // reclaim space from deleted files
rwMpq.close();

// Create a new archive
final out = MpqArchive.create('custom.MPQ', maxFileCount: 32);
out.addFile(r'data\my.dbc', encodedBytes, compress: true);
out.close();
```

### MPQ Exceptions

```dart
try {
  final mpq = MpqArchive.open('missing.MPQ');
} on MpqOpenException catch (e) {
  print('Failed to open archive: ${e.message}');
} on MpqFileNotFoundException catch (e) {
  print('File not found in archive: ${e.message}');
} on MpqReadException catch (e) {
  print('Read error: ${e.message}');
}
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
} on WriteException catch (e) {
  print('Write error: ${e.message}');
} on MpqOpenException catch (e) {
  print('MPQ open error: ${e.message}');
} on MpqFileNotFoundException catch (e) {
  print('MPQ file not found: ${e.message}');
}
```

### Locale Field Utilities

Helper functions for generating fields in predefined schemas:

```dart
// These utilities are used internally by the definition generator.
// They are available for custom schema creation.

// Generate 16 language string fields
List<Field> createLocaleFields(int startIndex, String baseName, String desc);

// Generate 16 language string fields + 1 flags field
List<Field> createLocaleFieldsWithFlag(
  int startIndex, String baseName, String desc,
  {String? flagName},
);

// Generate unused/skip fields
List<Field> createUnusedFields(
  int startIndex, int count,
  {String baseName = 'Unused', FieldType type = FieldType.unused},
);

// Generate consecutive integer fields
List<Field> createIntFields(
  int startIndex, int count, String baseName, String desc,
);
```

## Compatibility

Compatible with DBC files from:
- **AzerothCore** (3.3.5a)
- **TrinityCore** (3.3.5a)
- **MaNGOS** (3.3.5a)
- **Other World of Warcraft server emulators**

AzerothCore-style format strings are supported through `DbcFormatDialect.azerothCore`. The default Warcrafty dialect is an extended typed dialect; its extra characters (`B`, `h`, `H`, `u`, `q`, `Q`) are not valid in AzerothCore `DBCfmt.h`.

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

## Runtime Dependencies

| Package | Purpose |
|---------|---------|
| `ffi` | FFI bindings for StormLib (MPQ support) |
| `hooks` | Platform-native library resolution |

DBC read/write operations have zero native dependencies. Only the `ffi` Dart package is required at runtime. MPQ support requires a StormLib native library on your system.

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
