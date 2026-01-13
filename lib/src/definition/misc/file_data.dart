import 'package:warcrafty/src/internal/field.dart';
import 'package:warcrafty/src/internal/schema.dart';

/// FileData 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
const fileData = DbcSchema(
  name: 'FileData',
  format: 'nss',
  fields: [
    Field(index: 0, name: 'ID', description: 'ID', type: FieldType.id),
    Field(index: 1, name: 'Filename', description: 'Filename', type: FieldType.string),
    Field(index: 2, name: 'Filepath', description: 'Filepath', type: FieldType.string),
  ],
);
