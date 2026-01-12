import 'package:warcrafty/src/schema/field.dart';
import 'package:warcrafty/src/schema/schema.dart';

/// OverrideSpellData 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
const overrideSpellData = DbcSchema(
  name: 'OverrideSpellData',
  format: 'niiiiiiiiiii',
  fields: [
    Field(index: 0, name: 'ID', description: 'ID', type: FieldType.id),
    Field(index: 1, name: 'Spells0', description: 'Spells 0', type: FieldType.int32),
    Field(index: 2, name: 'Spells1', description: 'Spells 1', type: FieldType.int32),
    Field(index: 3, name: 'Spells2', description: 'Spells 2', type: FieldType.int32),
    Field(index: 4, name: 'Spells3', description: 'Spells 3', type: FieldType.int32),
    Field(index: 5, name: 'Spells4', description: 'Spells 4', type: FieldType.int32),
    Field(index: 6, name: 'Spells5', description: 'Spells 5', type: FieldType.int32),
    Field(index: 7, name: 'Spells6', description: 'Spells 6', type: FieldType.int32),
    Field(index: 8, name: 'Spells7', description: 'Spells 7', type: FieldType.int32),
    Field(index: 9, name: 'Spells8', description: 'Spells 8', type: FieldType.int32),
    Field(index: 10, name: 'Spells9', description: 'Spells 9', type: FieldType.int32),
    Field(index: 11, name: 'Flags', description: 'Flags', type: FieldType.int32),
  ],
);
