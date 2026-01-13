import 'package:warcrafty/src/internal/field.dart';
import 'package:warcrafty/src/internal/schema.dart';

/// PvpDifficulty 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
const pvpDifficulty = DbcSchema(
  name: 'PvpDifficulty',
  format: 'niiiii',
  fields: [
    Field(index: 0, name: 'ID', description: 'ID', type: FieldType.id),
    Field(index: 1, name: 'MapID', description: 'MapID', type: FieldType.int32),
    Field(index: 2, name: 'RangeIndex', description: 'RangeIndex', type: FieldType.int32),
    Field(index: 3, name: 'MinLevel', description: 'MinLevel', type: FieldType.int32),
    Field(index: 4, name: 'MaxLevel', description: 'MaxLevel', type: FieldType.int32),
    Field(index: 5, name: 'Difficulty', description: 'Difficulty', type: FieldType.int32),
  ],
);
