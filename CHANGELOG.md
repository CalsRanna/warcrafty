## 1.1.0

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

- **Binary Search Utilities**
  - `BinarySearch.search()` - Find exact matches
  - `BinarySearch.lowerBound()` - Find insertion point (>=)
  - `BinarySearch.upperBound()` - Find insertion point (>)

### Fixed

- `BinarySearch.searchByKey` returns `null` instead of `0` when not found

### Changed

- Refactored `DbcWriter` to extract `_collectStrings()` and `_validateFieldType()` methods

