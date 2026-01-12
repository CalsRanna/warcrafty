import 'package:warcrafty/src/schema/field.dart';
import 'package:warcrafty/src/schema/schema.dart';

/// ObjectEffect 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
const objectEffect = DbcSchema(
  name: 'ObjectEffect',
  format: 'nsiiiiiifffi',
  fields: [
    Field(index: 0, name: 'ID', description: 'ID', type: FieldType.id),
    Field(index: 1, name: 'Name', description: 'Name', type: FieldType.string),
    Field(index: 2, name: 'ObjectEffectGroupID', description: 'ObjectEffectGroupID', type: FieldType.int32),
    Field(index: 3, name: 'TriggerType', description: 'TriggerType', type: FieldType.int32),
    Field(index: 4, name: 'EventType', description: 'EventType', type: FieldType.int32),
    Field(index: 5, name: 'EffectRecType', description: 'EffectRecType', type: FieldType.int32),
    Field(index: 6, name: 'EffectRecID', description: 'EffectRecID', type: FieldType.int32),
    Field(index: 7, name: 'Attachment', description: 'Attachment', type: FieldType.int32),
    Field(index: 8, name: 'Offset0', description: 'Offset 0', type: FieldType.float),
    Field(index: 9, name: 'Offset1', description: 'Offset 1', type: FieldType.float),
    Field(index: 10, name: 'Offset2', description: 'Offset 2', type: FieldType.float),
    Field(index: 11, name: 'ObjectEffectModifierID', description: 'ObjectEffectModifierID', type: FieldType.int32),
  ],
);
