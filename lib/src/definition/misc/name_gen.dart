import 'package:warcrafty/src/internal/field.dart';
import 'package:warcrafty/src/internal/schema.dart';

/// NameGen 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
const nameGen = DbcSchema(
  name: 'NameGen',
  format: 'nsii',
  fields: [
    Field(index: 0, name: 'ID', description: 'ID', type: FieldType.id),
    Field(index: 1, name: 'Name', description: 'Name', type: FieldType.string),
    Field(index: 2, name: 'RaceID', description: 'RaceID', type: FieldType.int32),
    Field(index: 3, name: 'Sex', description: 'Sex', type: FieldType.int32),
  ],
);
