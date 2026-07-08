import 'package:warcrafty/src/internal/field.dart';
import 'package:warcrafty/src/internal/schema.dart';

/// gtOCTRegenMP 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
const gtoCTRegenMP = DbcSchema(
  name: 'gtOCTRegenMP',
  format: 'f',
  fields: [
    Field(index: 0, name: 'Data', description: 'Data', type: FieldType.float),
  ],
);
