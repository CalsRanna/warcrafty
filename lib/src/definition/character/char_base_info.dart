import 'package:warcrafty/src/internal/field.dart';
import 'package:warcrafty/src/internal/schema.dart';

/// CharBaseInfo 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
const charBaseInfo = DbcSchema(
  name: 'CharBaseInfo',
  format: 'bb',
  fields: [
    Field(index: 0, name: 'RaceID', description: 'RaceID', type: FieldType.uint8),
    Field(index: 1, name: 'ClassID', description: 'ClassID', type: FieldType.uint8),
  ],
);
