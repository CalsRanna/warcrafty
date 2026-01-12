import 'package:warcrafty/src/schema/field.dart';
import 'package:warcrafty/src/schema/schema.dart';

/// SpellVisualEffectName 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
const spellVisualEffectName = DbcSchema(
  name: 'SpellVisualEffectName',
  format: 'nssffff',
  fields: [
    Field(index: 0, name: 'ID', description: 'ID', type: FieldType.id),
    Field(index: 1, name: 'Name', description: 'Name', type: FieldType.string),
    Field(index: 2, name: 'FileName', description: 'FileName', type: FieldType.string),
    Field(index: 3, name: 'AreaEffectSize', description: 'AreaEffectSize', type: FieldType.float),
    Field(index: 4, name: 'Scale', description: 'Scale', type: FieldType.float),
    Field(index: 5, name: 'MinAllowedScale', description: 'MinAllowedScale', type: FieldType.float),
    Field(index: 6, name: 'MaxAllowedScale', description: 'MaxAllowedScale', type: FieldType.float),
  ],
);
