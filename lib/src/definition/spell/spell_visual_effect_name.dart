import 'package:warcrafty/src/definition/base/field_definition.dart';
import 'package:warcrafty/src/definition/base/structure_definition.dart';
import 'package:warcrafty/src/core/field_format.dart';

/// SpellVisualEffectName 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
const spellVisualEffectName = DbcStructureDefinition(
  name: 'SpellVisualEffectName',
  format: 'nssffff',
  fields: [
    FieldDefinition(index: 0, name: 'ID', description: 'ID', format: DbcFieldFormat.indexField),
    FieldDefinition(index: 1, name: 'Name', description: 'Name', format: DbcFieldFormat.string),
    FieldDefinition(index: 2, name: 'FileName', description: 'FileName', format: DbcFieldFormat.string),
    FieldDefinition(index: 3, name: 'AreaEffectSize', description: 'AreaEffectSize', format: DbcFieldFormat.float),
    FieldDefinition(index: 4, name: 'Scale', description: 'Scale', format: DbcFieldFormat.float),
    FieldDefinition(index: 5, name: 'MinAllowedScale', description: 'MinAllowedScale', format: DbcFieldFormat.float),
    FieldDefinition(index: 6, name: 'MaxAllowedScale', description: 'MaxAllowedScale', format: DbcFieldFormat.float),
  ],
);
