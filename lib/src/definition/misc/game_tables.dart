import 'package:warcrafty/src/schema/field.dart';
import 'package:warcrafty/src/schema/schema.dart';

/// GameTables 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
const gameTables = DbcSchema(
  name: 'GameTables',
  format: 'sii',
  fields: [
    Field(index: 0, name: 'Name', description: 'Name', type: FieldType.string),
    Field(index: 1, name: 'NumRows', description: 'NumRows', type: FieldType.int32),
    Field(index: 2, name: 'NumColumns', description: 'NumColumns', type: FieldType.int32),
  ],
);
