import 'package:warcrafty/src/definition/base/field_definition.dart';
import 'package:warcrafty/src/definition/base/structure_definition.dart';
import 'package:warcrafty/src/core/field_format.dart';

/// LoadingScreenTaxiSplines 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
const loadingScreenTaxiSplines = DbcStructureDefinition(
  name: 'LoadingScreenTaxiSplines',
  format: 'niffffffffffffffffi',
  fields: [
    FieldDefinition(index: 0, name: 'ID', description: 'ID', format: DbcFieldFormat.indexField),
    FieldDefinition(index: 1, name: 'PathID', description: 'PathID', format: DbcFieldFormat.intType),
    FieldDefinition(index: 2, name: 'Locx0', description: 'Locx 0', format: DbcFieldFormat.float),
    FieldDefinition(index: 3, name: 'Locx1', description: 'Locx 1', format: DbcFieldFormat.float),
    FieldDefinition(index: 4, name: 'Locx2', description: 'Locx 2', format: DbcFieldFormat.float),
    FieldDefinition(index: 5, name: 'Locx3', description: 'Locx 3', format: DbcFieldFormat.float),
    FieldDefinition(index: 6, name: 'Locx4', description: 'Locx 4', format: DbcFieldFormat.float),
    FieldDefinition(index: 7, name: 'Locx5', description: 'Locx 5', format: DbcFieldFormat.float),
    FieldDefinition(index: 8, name: 'Locx6', description: 'Locx 6', format: DbcFieldFormat.float),
    FieldDefinition(index: 9, name: 'Locx7', description: 'Locx 7', format: DbcFieldFormat.float),
    FieldDefinition(index: 10, name: 'Locy0', description: 'Locy 0', format: DbcFieldFormat.float),
    FieldDefinition(index: 11, name: 'Locy1', description: 'Locy 1', format: DbcFieldFormat.float),
    FieldDefinition(index: 12, name: 'Locy2', description: 'Locy 2', format: DbcFieldFormat.float),
    FieldDefinition(index: 13, name: 'Locy3', description: 'Locy 3', format: DbcFieldFormat.float),
    FieldDefinition(index: 14, name: 'Locy4', description: 'Locy 4', format: DbcFieldFormat.float),
    FieldDefinition(index: 15, name: 'Locy5', description: 'Locy 5', format: DbcFieldFormat.float),
    FieldDefinition(index: 16, name: 'Locy6', description: 'Locy 6', format: DbcFieldFormat.float),
    FieldDefinition(index: 17, name: 'Locy7', description: 'Locy 7', format: DbcFieldFormat.float),
    FieldDefinition(index: 18, name: 'LegIndex', description: 'LegIndex', format: DbcFieldFormat.intType),
  ],
);
