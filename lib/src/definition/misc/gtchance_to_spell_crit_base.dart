import 'package:warcrafty/src/schema/field.dart';
import 'package:warcrafty/src/schema/schema.dart';

/// gtChanceToSpellCritBase 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
const gtchanceToSpellCritBase = DbcSchema(
  name: 'gtChanceToSpellCritBase',
  format: 'f',
  fields: [
    Field(index: 0, name: 'Data', description: 'Data', type: FieldType.float),
  ],
);
