import 'package:warcrafty/src/schema/field.dart';
import 'package:warcrafty/src/schema/schema.dart';

/// Material 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
const material = DbcSchema(
  name: 'Material',
  format: 'niiii',
  fields: [
    Field(index: 0, name: 'ID', description: 'ID', type: FieldType.id),
    Field(index: 1, name: 'Flags', description: 'Flags', type: FieldType.int32),
    Field(index: 2, name: 'FoleySoundID', description: 'FoleySoundID', type: FieldType.int32),
    Field(index: 3, name: 'SheatheSoundID', description: 'SheatheSoundID', type: FieldType.int32),
    Field(index: 4, name: 'UnsheatheSoundID', description: 'UnsheatheSoundID', type: FieldType.int32),
  ],
);
