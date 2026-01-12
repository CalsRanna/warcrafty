import 'package:warcrafty/src/schema/field.dart';
import 'package:warcrafty/src/schema/schema.dart';

/// SpellCastTimes 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
const spellCastTimes = DbcSchema(
  name: 'SpellCastTimes',
  format: 'niii',
  fields: [
    Field(index: 0, name: 'ID', description: 'ID', type: FieldType.id),
    Field(index: 1, name: 'Base', description: 'Base', type: FieldType.int32),
    Field(index: 2, name: 'PerLevel', description: 'PerLevel', type: FieldType.int32),
    Field(index: 3, name: 'Minimum', description: 'Minimum', type: FieldType.int32),
  ],
);
