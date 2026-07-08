import 'package:warcrafty/src/internal/field.dart';
import 'package:warcrafty/src/internal/schema.dart';

/// gtChanceToMeleeCrit 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
const gtchanceToMeleeCrit = DbcSchema(
  name: 'gtChanceToMeleeCrit',
  format: 'f',
  fields: [
    Field(index: 0, name: 'Data', description: 'Data', type: FieldType.float),
  ],
);
