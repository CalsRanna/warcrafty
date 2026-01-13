import 'package:warcrafty/src/internal/field.dart';
import 'package:warcrafty/src/internal/schema.dart';

/// SoundWaterType 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
const soundWaterType = DbcSchema(
  name: 'SoundWaterType',
  format: 'niii',
  fields: [
    Field(index: 0, name: 'ID', description: 'ID', type: FieldType.id),
    Field(index: 1, name: 'SoundType', description: 'SoundType', type: FieldType.int32),
    Field(index: 2, name: 'SoundSubtype', description: 'SoundSubtype', type: FieldType.int32),
    Field(index: 3, name: 'SoundID', description: 'SoundID', type: FieldType.int32),
  ],
);
