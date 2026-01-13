import 'package:warcrafty/src/internal/field.dart';
import 'package:warcrafty/src/internal/schema.dart';

/// SpellDuration 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
const spellDuration = DbcSchema(
  name: 'SpellDuration',
  format: 'niii',
  fields: [
    Field(index: 0, name: 'ID', description: 'ID', type: FieldType.id),
    Field(index: 1, name: 'Duration', description: 'Duration', type: FieldType.int32),
    Field(index: 2, name: 'DurationPerLevel', description: 'DurationPerLevel', type: FieldType.int32),
    Field(index: 3, name: 'MaxDuration', description: 'MaxDuration', type: FieldType.int32),
  ],
);
