import 'package:warcrafty/src/internal/field.dart';
import 'package:warcrafty/src/internal/schema.dart';

/// SpellEffectCameraShakes 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
const spellEffectCameraShakes = DbcSchema(
  name: 'SpellEffectCameraShakes',
  format: 'niii',
  fields: [
    Field(index: 0, name: 'ID', description: 'ID', type: FieldType.id),
    Field(index: 1, name: 'CameraShake0', description: 'CameraShake 0', type: FieldType.int32),
    Field(index: 2, name: 'CameraShake1', description: 'CameraShake 1', type: FieldType.int32),
    Field(index: 3, name: 'CameraShake2', description: 'CameraShake 2', type: FieldType.int32),
  ],
);
