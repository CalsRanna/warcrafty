import 'package:warcrafty/src/internal/field.dart';
import 'package:warcrafty/src/internal/schema.dart';

/// NPCSounds 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
const nPCSounds = DbcSchema(
  name: 'NPCSounds',
  format: 'niiii',
  fields: [
    Field(index: 0, name: 'ID', description: 'ID', type: FieldType.id),
    Field(index: 1, name: 'SoundID0', description: 'SoundID 0', type: FieldType.int32),
    Field(index: 2, name: 'SoundID1', description: 'SoundID 1', type: FieldType.int32),
    Field(index: 3, name: 'SoundID2', description: 'SoundID 2', type: FieldType.int32),
    Field(index: 4, name: 'SoundID3', description: 'SoundID 3', type: FieldType.int32),
  ],
);
