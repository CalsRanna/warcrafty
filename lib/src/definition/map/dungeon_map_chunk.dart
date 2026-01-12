import 'package:warcrafty/src/definition/base/field_definition.dart';
import 'package:warcrafty/src/definition/base/structure_definition.dart';
import 'package:warcrafty/src/core/field_format.dart';

/// DungeonMapChunk 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
const dungeonMapChunk = DbcStructureDefinition(
  name: 'DungeonMapChunk',
  format: 'niiif',
  fields: [
    FieldDefinition(index: 0, name: 'ID', description: 'ID', format: DbcFieldFormat.indexField),
    FieldDefinition(index: 1, name: 'MapID', description: 'MapID', format: DbcFieldFormat.intType),
    FieldDefinition(index: 2, name: 'WMOGroupID', description: 'WMOGroupID', format: DbcFieldFormat.intType),
    FieldDefinition(index: 3, name: 'DungeonMapID', description: 'DungeonMapID', format: DbcFieldFormat.intType),
    FieldDefinition(index: 4, name: 'MinZ', description: 'MinZ', format: DbcFieldFormat.float),
  ],
);
