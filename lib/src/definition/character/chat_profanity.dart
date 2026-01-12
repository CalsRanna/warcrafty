import 'package:warcrafty/src/schema/field.dart';
import 'package:warcrafty/src/schema/schema.dart';

/// ChatProfanity 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
const chatProfanity = DbcSchema(
  name: 'ChatProfanity',
  format: 'nsi',
  fields: [
    Field(index: 0, name: 'ID', description: 'ID', type: FieldType.id),
    Field(index: 1, name: 'Text', description: 'Text', type: FieldType.string),
    Field(index: 2, name: 'Language', description: 'Language', type: FieldType.int32),
  ],
);
