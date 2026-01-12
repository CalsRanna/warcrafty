import 'package:warcrafty/src/definition/base/field_definition.dart';
import 'package:warcrafty/src/definition/base/structure_definition.dart';
import 'package:warcrafty/src/core/field_format.dart';

/// SpellCategory 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
const spellCategory = DbcStructureDefinition(
  name: 'SpellCategory',
  format: 'ni',
  fields: [
    FieldDefinition(index: 0, name: 'ID', description: 'ID', format: DbcFieldFormat.indexField),
    FieldDefinition(index: 1, name: 'Flags', description: 'Flags', format: DbcFieldFormat.intType),
  ],
);
