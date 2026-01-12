import 'package:warcrafty/src/schema/field.dart';
import 'package:warcrafty/src/schema/schema.dart';

/// SpellVisualKitModelAttach 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
const spellVisualKitModelAttach = DbcSchema(
  name: 'SpellVisualKitModelAttach',
  format: 'niiiffffff',
  fields: [
    Field(index: 0, name: 'ID', description: 'ID', type: FieldType.id),
    Field(index: 1, name: 'ParentSpellVisualKitID', description: 'ParentSpellVisualKitID', type: FieldType.int32),
    Field(index: 2, name: 'SpellVisualEffectNameID', description: 'SpellVisualEffectNameID', type: FieldType.int32),
    Field(index: 3, name: 'AttachmentID', description: 'AttachmentID', type: FieldType.int32),
    Field(index: 4, name: 'Offset0', description: 'Offset 0', type: FieldType.float),
    Field(index: 5, name: 'Offset1', description: 'Offset 1', type: FieldType.float),
    Field(index: 6, name: 'Offset2', description: 'Offset 2', type: FieldType.float),
    Field(index: 7, name: 'Yaw', description: 'Yaw', type: FieldType.float),
    Field(index: 8, name: 'Pitch', description: 'Pitch', type: FieldType.float),
    Field(index: 9, name: 'Roll', description: 'Roll', type: FieldType.float),
  ],
);
