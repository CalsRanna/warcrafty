import 'package:warcrafty/src/core/field_definition.dart';
import 'package:warcrafty/src/core/structure_definition.dart';
import 'package:warcrafty/src/core/field_format.dart';

/// DeathThudLookups 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
const deathThudLookups = DbcStructureDefinition(
  name: 'DeathThudLookups',
  format: 'niiii',
  fields: [
    FieldDefinition(index: 0, name: 'ID', description: 'ID', format: DbcFieldFormat.indexField),
    FieldDefinition(index: 1, name: 'SizeClass', description: 'SizeClass', format: DbcFieldFormat.intType),
    FieldDefinition(index: 2, name: 'TerrainTypeSoundID', description: 'TerrainTypeSoundID', format: DbcFieldFormat.intType),
    FieldDefinition(index: 3, name: 'SoundEntryID', description: 'SoundEntryID', format: DbcFieldFormat.intType),
    FieldDefinition(index: 4, name: 'SoundEntryIDWater', description: 'SoundEntryIDWater', format: DbcFieldFormat.intType),
  ],
);
