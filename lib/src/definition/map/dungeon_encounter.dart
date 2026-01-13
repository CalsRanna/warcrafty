import 'package:warcrafty/src/internal/field.dart';
import 'package:warcrafty/src/internal/schema.dart';
import 'package:warcrafty/src/internal/locale_field.dart';

/// DungeonEncounter 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
final dungeonEncounter = DbcSchema(
  name: 'DungeonEncounter',
  format: 'niiiisssssssssssssssssi',
  fields: [
    const Field(index: 0, name: 'ID', description: 'ID', type: FieldType.id),
    const Field(index: 1, name: 'MapID', description: 'MapID', type: FieldType.int32),
    const Field(index: 2, name: 'Difficulty', description: 'Difficulty', type: FieldType.int32),
    const Field(index: 3, name: 'OrderIndex', description: 'OrderIndex', type: FieldType.int32),
    const Field(index: 4, name: 'Bit', description: 'Bit', type: FieldType.int32),
    ...createLocaleFieldsWithFlag(5, 'Name_lang', 'Name_lang'),
    const Field(index: 22, name: 'SpellIconID', description: 'SpellIconID', type: FieldType.int32),
  ],
);
