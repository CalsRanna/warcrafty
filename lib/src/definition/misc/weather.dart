import 'package:warcrafty/src/definition/base/field_definition.dart';
import 'package:warcrafty/src/definition/base/structure_definition.dart';
import 'package:warcrafty/src/core/field_format.dart';

/// Weather 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
const weather = DbcStructureDefinition(
  name: 'Weather',
  format: 'niiffffs',
  fields: [
    FieldDefinition(index: 0, name: 'ID', description: 'ID', format: DbcFieldFormat.indexField),
    FieldDefinition(index: 1, name: 'AmbienceID', description: 'AmbienceID', format: DbcFieldFormat.intType),
    FieldDefinition(index: 2, name: 'EffectType', description: 'EffectType', format: DbcFieldFormat.intType),
    FieldDefinition(index: 3, name: 'TransitionSkyBox', description: 'TransitionSkyBox', format: DbcFieldFormat.float),
    FieldDefinition(index: 4, name: 'EffectColor0', description: 'EffectColor 0', format: DbcFieldFormat.float),
    FieldDefinition(index: 5, name: 'EffectColor1', description: 'EffectColor 1', format: DbcFieldFormat.float),
    FieldDefinition(index: 6, name: 'EffectColor2', description: 'EffectColor 2', format: DbcFieldFormat.float),
    FieldDefinition(index: 7, name: 'EffectTexture', description: 'EffectTexture', format: DbcFieldFormat.string),
  ],
);
