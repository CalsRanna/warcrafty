import 'package:warcrafty/src/schema/field.dart';
import 'package:warcrafty/src/schema/schema.dart';

/// LoadingScreens 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
const loadingScreens = DbcSchema(
  name: 'LoadingScreens',
  format: 'nssi',
  fields: [
    Field(index: 0, name: 'ID', description: 'ID', type: FieldType.id),
    Field(index: 1, name: 'Name', description: 'Name', type: FieldType.string),
    Field(index: 2, name: 'FileName', description: 'FileName', type: FieldType.string),
    Field(index: 3, name: 'HasWideScreen', description: 'HasWideScreen', type: FieldType.int32),
  ],
);
