import 'package:warcrafty/src/schema/field.dart';
import 'package:warcrafty/src/schema/schema.dart';

/// SpellVisualKitAreaModel 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
const spellVisualKitAreaModel = DbcSchema(
  name: 'SpellVisualKitAreaModel',
  format: 'nsi',
  fields: [
    Field(index: 0, name: 'ID', description: 'ID', type: FieldType.id),
    Field(index: 1, name: 'Name', description: 'Name', type: FieldType.string),
    Field(index: 2, name: 'EnumID', description: 'EnumID', type: FieldType.int32),
  ],
);
