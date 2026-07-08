## 2.0.0

### Added

- **Explicit Format Dialects**
  - Added `DbcFormatDialect.warcrafty` as the default extended typed dialect
  - Added `DbcFormatDialect.azerothCore` for AzerothCore/TrinityCore `DBCfmt.h` compatibility (`x X s f i b d n l`)
  - `DbcLoader`, `DbcWriter`, `DbcSchema`, and `FieldOffsets` now carry dialect information
  - AzerothCore dialect interprets `i` as `uint32`, while the default Warcrafty dialect keeps `i` as `int32` and uses `u` for `uint32`

### Changed

- Documentation now describes AzerothCore format strings as a supported dialect rather than claiming all Warcrafty extended format strings are directly valid in AzerothCore `DBCfmt.h`

## 1.0.2

### Fixed

- **Locstring Flag Field Type Mismatch**
  - Corrected the format string for `locstring` fields: the 17th slot (locale flags) is now `int32` (`i`) instead of `string` (`s`), matching the field definitions produced by `createLocaleFieldsWithFlag` (16 strings + 1 int32 flag)
  - This resolves a type mismatch between import and export: the flag field was previously read as a `String` on load (via `toMap()`) and expected as a `String` on write, corrupting non-zero locale flags and breaking round-trip write of records carrying int flag values
  - Record size and field offsets are unchanged (`s` and `i` are both 4 bytes); only the type dispatch at the flag position is corrected
  - Regenerated all 245 predefined schemas from the fixed generator

### Changed

- **`DbcRecord.toMap()` now returns an `int` for locale flag fields** (previously a `String` parsed from the flag bitmask). Direct accessors `getInt`/`getString` are unaffected because they already read raw bytes by offset

### Added

- **Schema Consistency Test**: asserts `format[i] == fields[i].type.char` across all 245 predefined schemas, preventing format/field drift regressions
- **Locstring Round-Trip Test**: verifies locale flag fields write and read back as `int`

## 1.0.1

### Fixed

- **Exception Handling**
  - Replace `FormatException` with `DbcFormatException` for consistent error handling across DBC operations
  - Improved error specificity for format-related issues

### Refactored

- **Code Cleanup**
  - Removed redundant `fieldOffsets` getter from `DbcLoader`
  - Simplified `loader.dart` by eliminating unnecessary field offset delegation
  - Updated `DbcIndex` to directly access field offsets from loader's internal structure

## 1.0.0

### Added

- **Core DBC Operations**
  - `DbcLoader` - Read DBC files with sync/async support
  - `DbcWriter` - Write DBC files with string deduplication
  - `DbcRecord` - Access record fields with type-safe methods
  - `DbcIndexBuilder` - Build ID-based indexes with O(1) lookup

- **Locale Field Utilities** (`locale_fields.dart`)
  - `createLocaleFields()` - Generate field definitions for 16 languages
  - `createLocaleFieldsWithFlag()` - Generate locale fields with flag field
  - `createUnusedFields()` - Generate unused field definitions
  - `createIntFields()` - Generate consecutive integer field definitions

- **Type Validation in DbcWriter**
  - Validate field types before writing (int, float, string, bool)
  - Range checking for byte fields (0-255)
  - Friendly error messages with record and field index

- **100+ Predefined DBC Formats**
  - Achievement, Character, Creature, Faction formats
  - Item, Map, Quest, Skill, Spell formats
  - Vehicle, GT tables, and more

- **String Block Handler**
  - O(1) string lookup with prebuilt index
  - Efficient string deduplication on write

### Changed

- Refactored `DbcWriter` to extract `_collectStrings()` and `_validateFieldType()` methods

