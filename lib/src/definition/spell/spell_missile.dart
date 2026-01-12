import 'package:warcrafty/src/definition/base/field_definition.dart';
import 'package:warcrafty/src/definition/base/structure_definition.dart';
import 'package:warcrafty/src/core/field_format.dart';

/// SpellMissile 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
const spellMissile = DbcStructureDefinition(
  name: 'SpellMissile',
  format: 'nifffffffffffff',
  fields: [
    FieldDefinition(index: 0, name: 'ID', description: 'ID', format: DbcFieldFormat.indexField),
    FieldDefinition(index: 1, name: 'Flags', description: 'Flags', format: DbcFieldFormat.intType),
    FieldDefinition(index: 2, name: 'DefaultPitchMin', description: 'DefaultPitchMin', format: DbcFieldFormat.float),
    FieldDefinition(index: 3, name: 'DefaultPitchMax', description: 'DefaultPitchMax', format: DbcFieldFormat.float),
    FieldDefinition(index: 4, name: 'DefaultSpeedMin', description: 'DefaultSpeedMin', format: DbcFieldFormat.float),
    FieldDefinition(index: 5, name: 'DefaultSpeedMax', description: 'DefaultSpeedMax', format: DbcFieldFormat.float),
    FieldDefinition(index: 6, name: 'RandomizeFacingMin', description: 'RandomizeFacingMin', format: DbcFieldFormat.float),
    FieldDefinition(index: 7, name: 'RandomizeFacingMax', description: 'RandomizeFacingMax', format: DbcFieldFormat.float),
    FieldDefinition(index: 8, name: 'RandomizePitchMin', description: 'RandomizePitchMin', format: DbcFieldFormat.float),
    FieldDefinition(index: 9, name: 'RandomizePitchMax', description: 'RandomizePitchMax', format: DbcFieldFormat.float),
    FieldDefinition(index: 10, name: 'RandomizeSpeedMin', description: 'RandomizeSpeedMin', format: DbcFieldFormat.float),
    FieldDefinition(index: 11, name: 'RandomizeSpeedMax', description: 'RandomizeSpeedMax', format: DbcFieldFormat.float),
    FieldDefinition(index: 12, name: 'Gravity', description: 'Gravity', format: DbcFieldFormat.float),
    FieldDefinition(index: 13, name: 'MaxDuration', description: 'MaxDuration', format: DbcFieldFormat.float),
    FieldDefinition(index: 14, name: 'CollisionRadius', description: 'CollisionRadius', format: DbcFieldFormat.float),
  ],
);
