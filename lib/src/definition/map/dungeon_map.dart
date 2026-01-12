import 'package:warcrafty/src/core/field_definition.dart';
import 'package:warcrafty/src/core/structure_definition.dart';
import 'package:warcrafty/src/core/field_format.dart';

/// DungeonMap 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
const dungeonMap = DbcStructureDefinition(
  name: 'DungeonMap',
  format: 'niiffffi',
  fields: [
    FieldDefinition(index: 0, name: 'ID', description: 'ID', format: DbcFieldFormat.indexField),
    FieldDefinition(index: 1, name: 'MapID', description: 'MapID', format: DbcFieldFormat.intType),
    FieldDefinition(index: 2, name: 'FloorIndex', description: 'FloorIndex', format: DbcFieldFormat.intType),
    FieldDefinition(index: 3, name: 'MinX', description: 'MinX', format: DbcFieldFormat.float),
    FieldDefinition(index: 4, name: 'MaxX', description: 'MaxX', format: DbcFieldFormat.float),
    FieldDefinition(index: 5, name: 'MinY', description: 'MinY', format: DbcFieldFormat.float),
    FieldDefinition(index: 6, name: 'MaxY', description: 'MaxY', format: DbcFieldFormat.float),
    FieldDefinition(index: 7, name: 'ParentWorldMapID', description: 'ParentWorldMapID', format: DbcFieldFormat.intType),
  ],
);
