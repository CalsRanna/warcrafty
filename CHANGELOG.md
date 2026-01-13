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

