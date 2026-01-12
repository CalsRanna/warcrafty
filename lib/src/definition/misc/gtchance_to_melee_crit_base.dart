import 'package:warcrafty/src/schema/field.dart';
import 'package:warcrafty/src/schema/schema.dart';

/// gtChanceToMeleeCritBase 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
const gtchanceToMeleeCritBase = DbcSchema(
  name: 'gtChanceToMeleeCritBase',
  format: 'f',
  fields: [
    Field(index: 0, name: 'Data', description: 'Data', type: FieldType.float),
  ],
);
