import 'package:warcrafty/src/internal/field.dart';
import 'package:warcrafty/src/internal/schema.dart';

/// SpamMessages 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
const spamMessages = DbcSchema(
  name: 'SpamMessages',
  format: 'ns',
  fields: [
    Field(index: 0, name: 'ID', description: 'ID', type: FieldType.id),
    Field(index: 1, name: 'Text', description: 'Text', type: FieldType.string),
  ],
);
