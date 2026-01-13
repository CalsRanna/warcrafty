import 'package:warcrafty/src/internal/field.dart';
import 'package:warcrafty/src/internal/schema.dart';

/// ItemGroupSounds 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
const itemGroupSounds = DbcSchema(
  name: 'ItemGroupSounds',
  format: 'niiii',
  fields: [
    Field(index: 0, name: 'ID', description: 'ID', type: FieldType.id),
    Field(index: 1, name: 'Sound0', description: 'Sound 0', type: FieldType.int32),
    Field(index: 2, name: 'Sound1', description: 'Sound 1', type: FieldType.int32),
    Field(index: 3, name: 'Sound2', description: 'Sound 2', type: FieldType.int32),
    Field(index: 4, name: 'Sound3', description: 'Sound 3', type: FieldType.int32),
  ],
);
