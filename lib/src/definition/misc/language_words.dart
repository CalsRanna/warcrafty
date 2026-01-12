import 'package:warcrafty/src/schema/field.dart';
import 'package:warcrafty/src/schema/schema.dart';

/// LanguageWords 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
const languageWords = DbcSchema(
  name: 'LanguageWords',
  format: 'nis',
  fields: [
    Field(index: 0, name: 'ID', description: 'ID', type: FieldType.id),
    Field(index: 1, name: 'LanguageID', description: 'LanguageID', type: FieldType.int32),
    Field(index: 2, name: 'Word', description: 'Word', type: FieldType.string),
  ],
);
