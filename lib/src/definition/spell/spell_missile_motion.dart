import 'package:warcrafty/src/core/field_definition.dart';
import 'package:warcrafty/src/core/structure_definition.dart';
import 'package:warcrafty/src/core/field_format.dart';

/// SpellMissileMotion 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
const spellMissileMotion = DbcStructureDefinition(
  name: 'SpellMissileMotion',
  format: 'nssii',
  fields: [
    FieldDefinition(index: 0, name: 'ID', description: 'ID', format: DbcFieldFormat.indexField),
    FieldDefinition(index: 1, name: 'Name', description: 'Name', format: DbcFieldFormat.string),
    FieldDefinition(index: 2, name: 'ScriptBody', description: 'ScriptBody', format: DbcFieldFormat.string),
    FieldDefinition(index: 3, name: 'Flags', description: 'Flags', format: DbcFieldFormat.intType),
    FieldDefinition(index: 4, name: 'MissileCount', description: 'MissileCount', format: DbcFieldFormat.intType),
  ],
);
