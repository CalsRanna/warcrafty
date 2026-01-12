import 'package:warcrafty/src/core/field_definition.dart';
import 'package:warcrafty/src/core/structure_definition.dart';
import 'package:warcrafty/src/core/field_format.dart';

/// ScalingStatDistribution 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
const scalingStatDistribution = DbcStructureDefinition(
  name: 'ScalingStatDistribution',
  format: 'niiiiiiiiiiiiiiiiiiiii',
  fields: [
    FieldDefinition(index: 0, name: 'ID', description: 'ID', format: DbcFieldFormat.indexField),
    FieldDefinition(index: 1, name: 'StatID0', description: 'StatID 0', format: DbcFieldFormat.intType),
    FieldDefinition(index: 2, name: 'StatID1', description: 'StatID 1', format: DbcFieldFormat.intType),
    FieldDefinition(index: 3, name: 'StatID2', description: 'StatID 2', format: DbcFieldFormat.intType),
    FieldDefinition(index: 4, name: 'StatID3', description: 'StatID 3', format: DbcFieldFormat.intType),
    FieldDefinition(index: 5, name: 'StatID4', description: 'StatID 4', format: DbcFieldFormat.intType),
    FieldDefinition(index: 6, name: 'StatID5', description: 'StatID 5', format: DbcFieldFormat.intType),
    FieldDefinition(index: 7, name: 'StatID6', description: 'StatID 6', format: DbcFieldFormat.intType),
    FieldDefinition(index: 8, name: 'StatID7', description: 'StatID 7', format: DbcFieldFormat.intType),
    FieldDefinition(index: 9, name: 'StatID8', description: 'StatID 8', format: DbcFieldFormat.intType),
    FieldDefinition(index: 10, name: 'StatID9', description: 'StatID 9', format: DbcFieldFormat.intType),
    FieldDefinition(index: 11, name: 'Bonus0', description: 'Bonus 0', format: DbcFieldFormat.intType),
    FieldDefinition(index: 12, name: 'Bonus1', description: 'Bonus 1', format: DbcFieldFormat.intType),
    FieldDefinition(index: 13, name: 'Bonus2', description: 'Bonus 2', format: DbcFieldFormat.intType),
    FieldDefinition(index: 14, name: 'Bonus3', description: 'Bonus 3', format: DbcFieldFormat.intType),
    FieldDefinition(index: 15, name: 'Bonus4', description: 'Bonus 4', format: DbcFieldFormat.intType),
    FieldDefinition(index: 16, name: 'Bonus5', description: 'Bonus 5', format: DbcFieldFormat.intType),
    FieldDefinition(index: 17, name: 'Bonus6', description: 'Bonus 6', format: DbcFieldFormat.intType),
    FieldDefinition(index: 18, name: 'Bonus7', description: 'Bonus 7', format: DbcFieldFormat.intType),
    FieldDefinition(index: 19, name: 'Bonus8', description: 'Bonus 8', format: DbcFieldFormat.intType),
    FieldDefinition(index: 20, name: 'Bonus9', description: 'Bonus 9', format: DbcFieldFormat.intType),
    FieldDefinition(index: 21, name: 'Maxlevel', description: 'Maxlevel', format: DbcFieldFormat.intType),
  ],
);
