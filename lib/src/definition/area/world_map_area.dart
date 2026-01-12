import 'package:warcrafty/src/core/field_definition.dart';
import 'package:warcrafty/src/core/structure_definition.dart';
import 'package:warcrafty/src/core/field_format.dart';

/// WorldMapArea 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
const worldMapArea = DbcStructureDefinition(
  name: 'WorldMapArea',
  format: 'niisffffiii',
  fields: [
    FieldDefinition(index: 0, name: 'ID', description: 'ID', format: DbcFieldFormat.indexField),
    FieldDefinition(index: 1, name: 'MapID', description: 'MapID', format: DbcFieldFormat.intType),
    FieldDefinition(index: 2, name: 'AreaID', description: 'AreaID', format: DbcFieldFormat.intType),
    FieldDefinition(index: 3, name: 'AreaName', description: 'AreaName', format: DbcFieldFormat.string),
    FieldDefinition(index: 4, name: 'LocLeft', description: 'LocLeft', format: DbcFieldFormat.float),
    FieldDefinition(index: 5, name: 'LocRight', description: 'LocRight', format: DbcFieldFormat.float),
    FieldDefinition(index: 6, name: 'LocTop', description: 'LocTop', format: DbcFieldFormat.float),
    FieldDefinition(index: 7, name: 'LocBottom', description: 'LocBottom', format: DbcFieldFormat.float),
    FieldDefinition(index: 8, name: 'DisplayMapID', description: 'DisplayMapID', format: DbcFieldFormat.intType),
    FieldDefinition(index: 9, name: 'DefaultDungeonFloor', description: 'DefaultDungeonFloor', format: DbcFieldFormat.intType),
    FieldDefinition(index: 10, name: 'ParentWorldMapID', description: 'ParentWorldMapID', format: DbcFieldFormat.intType),
  ],
);
