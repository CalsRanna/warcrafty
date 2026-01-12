import 'package:warcrafty/src/schema/field.dart';
import 'package:warcrafty/src/schema/schema.dart';

/// SpellVisualPrecastTransitions 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
const spellVisualPrecastTransitions = DbcSchema(
  name: 'SpellVisualPrecastTransitions',
  format: 'nss',
  fields: [
    Field(index: 0, name: 'ID', description: 'ID', type: FieldType.id),
    Field(index: 1, name: 'PrecastLoadAnimName', description: 'PrecastLoadAnimName', type: FieldType.string),
    Field(index: 2, name: 'PrecastHoldAnimName', description: 'PrecastHoldAnimName', type: FieldType.string),
  ],
);
