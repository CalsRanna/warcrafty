import 'package:warcrafty/src/definition/base/field_definition.dart';
import 'package:warcrafty/src/definition/base/structure_definition.dart';
import 'package:warcrafty/src/core/field_format.dart';

/// SpellVisualPrecastTransitions 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
const spellVisualPrecastTransitions = DbcStructureDefinition(
  name: 'SpellVisualPrecastTransitions',
  format: 'nss',
  fields: [
    FieldDefinition(index: 0, name: 'ID', description: 'ID', format: DbcFieldFormat.indexField),
    FieldDefinition(index: 1, name: 'PrecastLoadAnimName', description: 'PrecastLoadAnimName', format: DbcFieldFormat.string),
    FieldDefinition(index: 2, name: 'PrecastHoldAnimName', description: 'PrecastHoldAnimName', format: DbcFieldFormat.string),
  ],
);
