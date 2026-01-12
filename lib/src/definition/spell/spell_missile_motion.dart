import 'package:warcrafty/src/schema/field.dart';
import 'package:warcrafty/src/schema/schema.dart';

/// SpellMissileMotion 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
const spellMissileMotion = DbcSchema(
  name: 'SpellMissileMotion',
  format: 'nssii',
  fields: [
    Field(index: 0, name: 'ID', description: 'ID', type: FieldType.id),
    Field(index: 1, name: 'Name', description: 'Name', type: FieldType.string),
    Field(index: 2, name: 'ScriptBody', description: 'ScriptBody', type: FieldType.string),
    Field(index: 3, name: 'Flags', description: 'Flags', type: FieldType.int32),
    Field(index: 4, name: 'MissileCount', description: 'MissileCount', type: FieldType.int32),
  ],
);
