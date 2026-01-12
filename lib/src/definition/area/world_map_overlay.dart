import 'package:warcrafty/src/definition/base/field_definition.dart';
import 'package:warcrafty/src/definition/base/structure_definition.dart';
import 'package:warcrafty/src/core/field_format.dart';

/// WorldMapOverlay 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
const worldMapOverlay = DbcStructureDefinition(
  name: 'WorldMapOverlay',
  format: 'niiiiiiisiiiiiiii',
  fields: [
    FieldDefinition(index: 0, name: 'ID', description: 'ID', format: DbcFieldFormat.indexField),
    FieldDefinition(index: 1, name: 'MapAreaID', description: 'MapAreaID', format: DbcFieldFormat.intType),
    FieldDefinition(index: 2, name: 'AreaID0', description: 'AreaID 0', format: DbcFieldFormat.intType),
    FieldDefinition(index: 3, name: 'AreaID1', description: 'AreaID 1', format: DbcFieldFormat.intType),
    FieldDefinition(index: 4, name: 'AreaID2', description: 'AreaID 2', format: DbcFieldFormat.intType),
    FieldDefinition(index: 5, name: 'AreaID3', description: 'AreaID 3', format: DbcFieldFormat.intType),
    FieldDefinition(index: 6, name: 'MapPointX', description: 'MapPointX', format: DbcFieldFormat.intType),
    FieldDefinition(index: 7, name: 'MapPointY', description: 'MapPointY', format: DbcFieldFormat.intType),
    FieldDefinition(index: 8, name: 'TextureName', description: 'TextureName', format: DbcFieldFormat.string),
    FieldDefinition(index: 9, name: 'TextureWidth', description: 'TextureWidth', format: DbcFieldFormat.intType),
    FieldDefinition(index: 10, name: 'TextureHeight', description: 'TextureHeight', format: DbcFieldFormat.intType),
    FieldDefinition(index: 11, name: 'OffsetX', description: 'OffsetX', format: DbcFieldFormat.intType),
    FieldDefinition(index: 12, name: 'OffsetY', description: 'OffsetY', format: DbcFieldFormat.intType),
    FieldDefinition(index: 13, name: 'HitRectTop', description: 'HitRectTop', format: DbcFieldFormat.intType),
    FieldDefinition(index: 14, name: 'HitRectLeft', description: 'HitRectLeft', format: DbcFieldFormat.intType),
    FieldDefinition(index: 15, name: 'HitRectBottom', description: 'HitRectBottom', format: DbcFieldFormat.intType),
    FieldDefinition(index: 16, name: 'HitRectRight', description: 'HitRectRight', format: DbcFieldFormat.intType),
  ],
);
