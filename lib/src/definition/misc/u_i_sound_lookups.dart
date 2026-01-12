import 'package:warcrafty/src/schema/field.dart';
import 'package:warcrafty/src/schema/schema.dart';

/// UISoundLookups 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
const uISoundLookups = DbcSchema(
  name: 'UISoundLookups',
  format: 'nis',
  fields: [
    Field(index: 0, name: 'ID', description: 'ID', type: FieldType.id),
    Field(index: 1, name: 'SoundID', description: 'SoundID', type: FieldType.int32),
    Field(index: 2, name: 'SoundName', description: 'SoundName', type: FieldType.string),
  ],
);
