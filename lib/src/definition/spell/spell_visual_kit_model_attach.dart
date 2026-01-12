import 'package:warcrafty/src/definition/base/field_definition.dart';
import 'package:warcrafty/src/definition/base/structure_definition.dart';
import 'package:warcrafty/src/core/field_format.dart';

/// SpellVisualKitModelAttach 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
const spellVisualKitModelAttach = DbcStructureDefinition(
  name: 'SpellVisualKitModelAttach',
  format: 'niiiffffff',
  fields: [
    FieldDefinition(index: 0, name: 'ID', description: 'ID', format: DbcFieldFormat.indexField),
    FieldDefinition(index: 1, name: 'ParentSpellVisualKitID', description: 'ParentSpellVisualKitID', format: DbcFieldFormat.intType),
    FieldDefinition(index: 2, name: 'SpellVisualEffectNameID', description: 'SpellVisualEffectNameID', format: DbcFieldFormat.intType),
    FieldDefinition(index: 3, name: 'AttachmentID', description: 'AttachmentID', format: DbcFieldFormat.intType),
    FieldDefinition(index: 4, name: 'Offset0', description: 'Offset 0', format: DbcFieldFormat.float),
    FieldDefinition(index: 5, name: 'Offset1', description: 'Offset 1', format: DbcFieldFormat.float),
    FieldDefinition(index: 6, name: 'Offset2', description: 'Offset 2', format: DbcFieldFormat.float),
    FieldDefinition(index: 7, name: 'Yaw', description: 'Yaw', format: DbcFieldFormat.float),
    FieldDefinition(index: 8, name: 'Pitch', description: 'Pitch', format: DbcFieldFormat.float),
    FieldDefinition(index: 9, name: 'Roll', description: 'Roll', format: DbcFieldFormat.float),
  ],
);
