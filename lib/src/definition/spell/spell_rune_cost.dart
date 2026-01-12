import 'package:warcrafty/src/schema/field.dart';
import 'package:warcrafty/src/schema/schema.dart';

/// SpellRuneCost 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
const spellRuneCost = DbcSchema(
  name: 'SpellRuneCost',
  format: 'niiii',
  fields: [
    Field(index: 0, name: 'ID', description: 'ID', type: FieldType.id),
    Field(index: 1, name: 'Blood', description: 'Blood', type: FieldType.int32),
    Field(index: 2, name: 'Unholy', description: 'Unholy', type: FieldType.int32),
    Field(index: 3, name: 'Frost', description: 'Frost', type: FieldType.int32),
    Field(index: 4, name: 'RunicPower', description: 'RunicPower', type: FieldType.int32),
  ],
);
