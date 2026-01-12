import 'package:warcrafty/src/schema/field.dart';
import 'package:warcrafty/src/schema/schema.dart';

/// gtChanceToSpellCrit 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
const gtchanceToSpellCrit = DbcSchema(
  name: 'gtChanceToSpellCrit',
  format: 'f',
  fields: [
    Field(index: 0, name: 'Data', description: 'Data', type: FieldType.float),
  ],
);
