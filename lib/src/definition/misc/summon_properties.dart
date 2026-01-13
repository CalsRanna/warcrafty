import 'package:warcrafty/src/internal/field.dart';
import 'package:warcrafty/src/internal/schema.dart';

/// SummonProperties 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
const summonProperties = DbcSchema(
  name: 'SummonProperties',
  format: 'niiiii',
  fields: [
    Field(index: 0, name: 'ID', description: 'ID', type: FieldType.id),
    Field(index: 1, name: 'Control', description: 'Control', type: FieldType.int32),
    Field(index: 2, name: 'Faction', description: 'Faction', type: FieldType.int32),
    Field(index: 3, name: 'Title', description: 'Title', type: FieldType.int32),
    Field(index: 4, name: 'Slot', description: 'Slot', type: FieldType.int32),
    Field(index: 5, name: 'Flags', description: 'Flags', type: FieldType.int32),
  ],
);
