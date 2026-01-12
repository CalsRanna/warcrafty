import 'package:warcrafty/src/core/field_definition.dart';
import 'package:warcrafty/src/core/structure_definition.dart';
import 'package:warcrafty/src/core/field_format.dart';

/// GameObjectDisplayInfo 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
const gameObjectDisplayInfo = DbcStructureDefinition(
  name: 'GameObjectDisplayInfo',
  format: 'nsiiiiiiiiiiffffffi',
  fields: [
    FieldDefinition(index: 0, name: 'ID', description: 'ID', format: DbcFieldFormat.indexField),
    FieldDefinition(index: 1, name: 'ModelName', description: 'ModelName', format: DbcFieldFormat.string),
    FieldDefinition(index: 2, name: 'Sound0', description: 'Sound 0', format: DbcFieldFormat.intType),
    FieldDefinition(index: 3, name: 'Sound1', description: 'Sound 1', format: DbcFieldFormat.intType),
    FieldDefinition(index: 4, name: 'Sound2', description: 'Sound 2', format: DbcFieldFormat.intType),
    FieldDefinition(index: 5, name: 'Sound3', description: 'Sound 3', format: DbcFieldFormat.intType),
    FieldDefinition(index: 6, name: 'Sound4', description: 'Sound 4', format: DbcFieldFormat.intType),
    FieldDefinition(index: 7, name: 'Sound5', description: 'Sound 5', format: DbcFieldFormat.intType),
    FieldDefinition(index: 8, name: 'Sound6', description: 'Sound 6', format: DbcFieldFormat.intType),
    FieldDefinition(index: 9, name: 'Sound7', description: 'Sound 7', format: DbcFieldFormat.intType),
    FieldDefinition(index: 10, name: 'Sound8', description: 'Sound 8', format: DbcFieldFormat.intType),
    FieldDefinition(index: 11, name: 'Sound9', description: 'Sound 9', format: DbcFieldFormat.intType),
    FieldDefinition(index: 12, name: 'GeoBoxMin0', description: 'GeoBoxMin 0', format: DbcFieldFormat.float),
    FieldDefinition(index: 13, name: 'GeoBoxMin1', description: 'GeoBoxMin 1', format: DbcFieldFormat.float),
    FieldDefinition(index: 14, name: 'GeoBoxMin2', description: 'GeoBoxMin 2', format: DbcFieldFormat.float),
    FieldDefinition(index: 15, name: 'GeoBoxMax0', description: 'GeoBoxMax 0', format: DbcFieldFormat.float),
    FieldDefinition(index: 16, name: 'GeoBoxMax1', description: 'GeoBoxMax 1', format: DbcFieldFormat.float),
    FieldDefinition(index: 17, name: 'GeoBoxMax2', description: 'GeoBoxMax 2', format: DbcFieldFormat.float),
    FieldDefinition(index: 18, name: 'ObjectEffectPackageID', description: 'ObjectEffectPackageID', format: DbcFieldFormat.intType),
  ],
);
