import 'package:warcrafty/src/schema/field.dart';
import 'package:warcrafty/src/schema/schema.dart';

/// SpellMissile 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
const spellMissile = DbcSchema(
  name: 'SpellMissile',
  format: 'nifffffffffffff',
  fields: [
    Field(index: 0, name: 'ID', description: 'ID', type: FieldType.id),
    Field(index: 1, name: 'Flags', description: 'Flags', type: FieldType.int32),
    Field(index: 2, name: 'DefaultPitchMin', description: 'DefaultPitchMin', type: FieldType.float),
    Field(index: 3, name: 'DefaultPitchMax', description: 'DefaultPitchMax', type: FieldType.float),
    Field(index: 4, name: 'DefaultSpeedMin', description: 'DefaultSpeedMin', type: FieldType.float),
    Field(index: 5, name: 'DefaultSpeedMax', description: 'DefaultSpeedMax', type: FieldType.float),
    Field(index: 6, name: 'RandomizeFacingMin', description: 'RandomizeFacingMin', type: FieldType.float),
    Field(index: 7, name: 'RandomizeFacingMax', description: 'RandomizeFacingMax', type: FieldType.float),
    Field(index: 8, name: 'RandomizePitchMin', description: 'RandomizePitchMin', type: FieldType.float),
    Field(index: 9, name: 'RandomizePitchMax', description: 'RandomizePitchMax', type: FieldType.float),
    Field(index: 10, name: 'RandomizeSpeedMin', description: 'RandomizeSpeedMin', type: FieldType.float),
    Field(index: 11, name: 'RandomizeSpeedMax', description: 'RandomizeSpeedMax', type: FieldType.float),
    Field(index: 12, name: 'Gravity', description: 'Gravity', type: FieldType.float),
    Field(index: 13, name: 'MaxDuration', description: 'MaxDuration', type: FieldType.float),
    Field(index: 14, name: 'CollisionRadius', description: 'CollisionRadius', type: FieldType.float),
  ],
);
