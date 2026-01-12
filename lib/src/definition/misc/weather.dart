import 'package:warcrafty/src/schema/field.dart';
import 'package:warcrafty/src/schema/schema.dart';

/// Weather 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
const weather = DbcSchema(
  name: 'Weather',
  format: 'niiffffs',
  fields: [
    Field(index: 0, name: 'ID', description: 'ID', type: FieldType.id),
    Field(index: 1, name: 'AmbienceID', description: 'AmbienceID', type: FieldType.int32),
    Field(index: 2, name: 'EffectType', description: 'EffectType', type: FieldType.int32),
    Field(index: 3, name: 'TransitionSkyBox', description: 'TransitionSkyBox', type: FieldType.float),
    Field(index: 4, name: 'EffectColor0', description: 'EffectColor 0', type: FieldType.float),
    Field(index: 5, name: 'EffectColor1', description: 'EffectColor 1', type: FieldType.float),
    Field(index: 6, name: 'EffectColor2', description: 'EffectColor 2', type: FieldType.float),
    Field(index: 7, name: 'EffectTexture', description: 'EffectTexture', type: FieldType.string),
  ],
);
