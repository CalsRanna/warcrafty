import 'package:warcrafty/src/schema/field.dart';
import 'package:warcrafty/src/schema/schema.dart';

/// DeclinedWordCases 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
const declinedWordCases = DbcSchema(
  name: 'DeclinedWordCases',
  format: 'niis',
  fields: [
    Field(index: 0, name: 'ID', description: 'ID', type: FieldType.id),
    Field(index: 1, name: 'DeclinedWordID', description: 'DeclinedWordID', type: FieldType.int32),
    Field(index: 2, name: 'CaseIndex', description: 'CaseIndex', type: FieldType.int32),
    Field(index: 3, name: 'DeclinedWord', description: 'DeclinedWord', type: FieldType.string),
  ],
);
