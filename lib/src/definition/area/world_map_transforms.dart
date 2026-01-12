import 'package:warcrafty/src/definition/base/field_definition.dart';
import 'package:warcrafty/src/definition/base/structure_definition.dart';
import 'package:warcrafty/src/core/field_format.dart';

/// WorldMapTransforms 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
const worldMapTransforms = DbcStructureDefinition(
  name: 'WorldMapTransforms',
  format: 'niffffiffi',
  fields: [
    FieldDefinition(index: 0, name: 'ID', description: 'ID', format: DbcFieldFormat.indexField),
    FieldDefinition(index: 1, name: 'MapID', description: 'MapID', format: DbcFieldFormat.intType),
    FieldDefinition(index: 2, name: 'RegionMin0', description: 'RegionMin 0', format: DbcFieldFormat.float),
    FieldDefinition(index: 3, name: 'RegionMin1', description: 'RegionMin 1', format: DbcFieldFormat.float),
    FieldDefinition(index: 4, name: 'RegionMax0', description: 'RegionMax 0', format: DbcFieldFormat.float),
    FieldDefinition(index: 5, name: 'RegionMax1', description: 'RegionMax 1', format: DbcFieldFormat.float),
    FieldDefinition(index: 6, name: 'NewMapID', description: 'NewMapID', format: DbcFieldFormat.intType),
    FieldDefinition(index: 7, name: 'RegionOffset0', description: 'RegionOffset 0', format: DbcFieldFormat.float),
    FieldDefinition(index: 8, name: 'RegionOffset1', description: 'RegionOffset 1', format: DbcFieldFormat.float),
    FieldDefinition(index: 9, name: 'NewDungeonMapID', description: 'NewDungeonMapID', format: DbcFieldFormat.intType),
  ],
);
