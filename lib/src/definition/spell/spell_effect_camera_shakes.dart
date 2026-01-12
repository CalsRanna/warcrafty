import 'package:warcrafty/src/core/field_definition.dart';
import 'package:warcrafty/src/core/structure_definition.dart';
import 'package:warcrafty/src/core/field_format.dart';

/// SpellEffectCameraShakes 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
const spellEffectCameraShakes = DbcStructureDefinition(
  name: 'SpellEffectCameraShakes',
  format: 'niii',
  fields: [
    FieldDefinition(index: 0, name: 'ID', description: 'ID', format: DbcFieldFormat.indexField),
    FieldDefinition(index: 1, name: 'CameraShake0', description: 'CameraShake 0', format: DbcFieldFormat.intType),
    FieldDefinition(index: 2, name: 'CameraShake1', description: 'CameraShake 1', format: DbcFieldFormat.intType),
    FieldDefinition(index: 3, name: 'CameraShake2', description: 'CameraShake 2', format: DbcFieldFormat.intType),
  ],
);
