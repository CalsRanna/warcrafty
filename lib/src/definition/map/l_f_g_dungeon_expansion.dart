import 'package:warcrafty/src/internal/field.dart';
import 'package:warcrafty/src/internal/schema.dart';

/// LFGDungeonExpansion 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
const lFGDungeonExpansion = DbcSchema(
  name: 'LFGDungeonExpansion',
  format: 'niiiiiii',
  fields: [
    Field(index: 0, name: 'ID', description: 'ID', type: FieldType.id),
    Field(index: 1, name: 'Lfg_ID', description: 'Lfg_ID', type: FieldType.int32),
    Field(index: 2, name: 'Expansion_level', description: 'Expansion_level', type: FieldType.int32),
    Field(index: 3, name: 'Random_ID', description: 'Random_ID', type: FieldType.int32),
    Field(index: 4, name: 'Hard_level_min', description: 'Hard_level_min', type: FieldType.int32),
    Field(index: 5, name: 'Hard_level_max', description: 'Hard_level_max', type: FieldType.int32),
    Field(index: 6, name: 'Target_level_min', description: 'Target_level_min', type: FieldType.int32),
    Field(index: 7, name: 'Target_level_max', description: 'Target_level_max', type: FieldType.int32),
  ],
);
