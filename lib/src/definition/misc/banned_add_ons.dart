import 'package:warcrafty/src/internal/field.dart';
import 'package:warcrafty/src/internal/schema.dart';

/// BannedAddOns 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
const bannedAddOns = DbcSchema(
  name: 'BannedAddOns',
  format: 'niiiiiiiiii',
  fields: [
    Field(index: 0, name: 'ID', description: 'ID', type: FieldType.id),
    Field(index: 1, name: 'NameMD50', description: 'NameMD5 0', type: FieldType.int32),
    Field(index: 2, name: 'NameMD51', description: 'NameMD5 1', type: FieldType.int32),
    Field(index: 3, name: 'NameMD52', description: 'NameMD5 2', type: FieldType.int32),
    Field(index: 4, name: 'NameMD53', description: 'NameMD5 3', type: FieldType.int32),
    Field(index: 5, name: 'VersionMD50', description: 'VersionMD5 0', type: FieldType.int32),
    Field(index: 6, name: 'VersionMD51', description: 'VersionMD5 1', type: FieldType.int32),
    Field(index: 7, name: 'VersionMD52', description: 'VersionMD5 2', type: FieldType.int32),
    Field(index: 8, name: 'VersionMD53', description: 'VersionMD5 3', type: FieldType.int32),
    Field(index: 9, name: 'LastModified', description: 'LastModified', type: FieldType.int32),
    Field(index: 10, name: 'Flags', description: 'Flags', type: FieldType.int32),
  ],
);
