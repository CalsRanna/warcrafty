import 'package:warcrafty/src/internal/field.dart';
import 'package:warcrafty/src/internal/schema.dart';

/// Stationery 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
const stationery = DbcSchema(
  name: 'Stationery',
  format: 'nisi',
  fields: [
    Field(index: 0, name: 'ID', description: 'ID', type: FieldType.id),
    Field(index: 1, name: 'ItemID', description: 'ItemID', type: FieldType.int32),
    Field(index: 2, name: 'Texture', description: 'Texture', type: FieldType.string),
    Field(index: 3, name: 'Flags', description: 'Flags', type: FieldType.int32),
  ],
);
