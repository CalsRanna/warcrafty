import 'package:warcrafty/src/schema/field.dart';
import 'package:warcrafty/src/schema/schema.dart';

/// CreatureSpellData 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
const creatureSpellData = DbcSchema(
  name: 'CreatureSpellData',
  format: 'niiiiiiii',
  fields: [
    Field(index: 0, name: 'ID', description: 'ID', type: FieldType.id),
    Field(index: 1, name: 'Spells0', description: 'Spells 0', type: FieldType.int32),
    Field(index: 2, name: 'Spells1', description: 'Spells 1', type: FieldType.int32),
    Field(index: 3, name: 'Spells2', description: 'Spells 2', type: FieldType.int32),
    Field(index: 4, name: 'Spells3', description: 'Spells 3', type: FieldType.int32),
    Field(index: 5, name: 'Availability0', description: 'Availability 0', type: FieldType.int32),
    Field(index: 6, name: 'Availability1', description: 'Availability 1', type: FieldType.int32),
    Field(index: 7, name: 'Availability2', description: 'Availability 2', type: FieldType.int32),
    Field(index: 8, name: 'Availability3', description: 'Availability 3', type: FieldType.int32),
  ],
);
