# Warcrafty

[![Pub Version](https://img.shields.io/pub/v/warcrafty)](https://pub.dev/packages/warcrafty)
[![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg)](https://opensource.org/licenses/MIT)

A high-performance Dart library for reading and writing World of Warcraft DBC (Database Client) files.

[中文文档](README_ZH.md)

## Features

- **High Performance**: Efficient binary data processing using `ByteData` and `Uint8List`
- **Format String Driven**: Flexible parsing fully compatible with AzerothCore format strings
- **Prebuilt String Index**: O(1) string lookup with prebuilt index
- **ID Index Support**: ID-based index building with binary search
- **Full Read/Write Support**: Complete DBC file reading and writing capabilities
- **String Deduplication**: Automatic string deduplication to reduce file size
- **Async Support**: Both synchronous and asynchronous operations
- **Type Safety**: Full Dart type safety with rich exception handling
- **100+ Predefined Formats**: Built-in format definitions for common DBC files

## Installation

Add to your `pubspec.yaml`:

```yaml
dependencies:
  warcrafty: ^1.0.0
```

Then run:

```bash
dart pub get
```

## Quick Start

```dart
import 'package:warcrafty/warcrafty.dart';

void main() {
  // Read a DBC file
  final loader = DbcLoader.loadFromPath('ChrRaces.dbc', 'niiiisssssssssssssssss');

  // Iterate through all records
  for (final record in loader.records) {
    print('ID: ${record.getInt(0)}, Name: ${record.getString(5)}');
  }

  // Use index for fast lookup
  final indexBuilder = DbcIndexBuilder.fromLoader(loader, (record) => record.toMap());
  final race = indexBuilder.lookup(1);

  loader.close();

  // Write a DBC file
  DbcWriter.writeToPath('output.dbc', 'niiiiss', [
    [1, 0, 84, 0, 0, 'Human', 'Human'],
  ]);
}
```

## Format String Reference

Each character in the format string represents a field type:

| Char | Type | Size | Description |
|------|------|------|-------------|
| `n` | indexField | 4 bytes | Index field (ID) for fast lookup |
| `i` | intType | 4 bytes | 32-bit signed integer |
| `b` | byte | 1 byte | 8-bit unsigned integer |
| `f` | float | 4 bytes | 32-bit floating point |
| `s` | string | 4 bytes | String offset (points to string block) |
| `x` | na | 4 bytes | Unknown/skip field |
| `X` | naByte | 1 byte | Unknown/skip byte field |
| `d` | sort | 4 bytes | Sort field (not included in data) |
| `l` | logic | 4 bytes | Boolean/logic value |

## API Reference

### DbcLoader

Read DBC files:

```dart
// Load from file path
final loader = DbcLoader.loadFromPath('path/to/file.dbc', 'niiiiss');

// Async loading
final loader = DbcLoader('path/to/file.dbc');
await loader.loadAsync('niiiiss');

// Get record count and field count
print(loader.recordCount);
print(loader.fieldCount);

// Iterate records
for (final record in loader.records) {
  // Process record
}

// Close when done
loader.close();
```

### DbcRecord

Access record fields:

```dart
final record = loader.getRecord(0);

// Read integers
final id = record.getInt(0);
final unsigned = record.getUint(0);

// Read floats
final float = record.getFloat(0);

// Read strings
final name = record.getString(5);

// Convert to Map
final map = record.toMap();
```

### DbcWriter

Write DBC files:

```dart
// Write to file
DbcWriter.writeToPath('output.dbc', 'nii', [
  [1, 100, 200],
  [2, 300, 400],
]);

// Async write
await DbcWriter.writeToPathAsync('output.dbc', 'nii', records);

// Copy and modify existing file
DbcWriter.copyWithModify(
  sourcePath: 'input.dbc',
  sourceFormat: 'niiiiss',
  outputPath: 'output.dbc',
  modify: (source) => [
    source.getInt(0),
    source.getInt(1) + 1,
    // ...
  ],
);
```

### DbcIndexBuilder

Build ID-based indexes for fast lookup:

```dart
final indexBuilder = DbcIndexBuilder.fromLoader(loader, (record) {
  return {'ID': record.getInt(0), 'Name': record.getString(5)};
});

// O(1) lookup by ID
final record = indexBuilder.lookup(1);

// Check if ID exists
print(indexBuilder.contains(1));

// Get all IDs
print(indexBuilder.allIds);
```

## Predefined Formats

The library includes 100+ predefined format definitions:

```dart
import 'package:warcrafty/warcrafty.dart';

// Use predefined format
final loader = DbcLoader.loadFromPath('ChrRaces.dbc', DbcFormats.chrRaces);
```

Categories include:
- **Character**: ChrRaces, ChrClasses, CharTitles, Talent
- **Item**: Item, ItemSet, ItemExtendedCost, GemProperties
- **Spell**: Spell, SpellRange, SpellDuration, SpellRadius
- **Skill**: SkillLine, SkillLineAbility
- **GT Tables**: GtCombatRatings, GtChanceToSpellCrit, etc.
- **Others**: Achievement, Faction, Map, Quest, and more

## Compatibility

Compatible with DBC files from:
- AzerothCore
- TrinityCore
- MaNGOS
- Other World of Warcraft server emulators

Format strings are fully compatible with AzerothCore's DBC format definitions.

## Testing

```bash
dart test
```

## License

MIT License - see [LICENSE](LICENSE) file.

## Acknowledgments

- [AzerothCore](https://www.azerothcore.org/) - DBC format reference
