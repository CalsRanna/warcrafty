import 'package:warcrafty/src/core/field_definition.dart';
import 'package:warcrafty/src/core/structure_definition.dart';
import 'package:warcrafty/src/core/field_format.dart';

/// SpellRadius 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
const spellRadius = DbcStructureDefinition(
  name: 'SpellRadius',
  format: 'nfff',
  fields: [
    FieldDefinition(index: 0, name: 'ID', description: 'ID', format: DbcFieldFormat.indexField),
    FieldDefinition(index: 1, name: 'Radius', description: 'Radius', format: DbcFieldFormat.float),
    FieldDefinition(index: 2, name: 'RadiusPerLevel', description: 'RadiusPerLevel', format: DbcFieldFormat.float),
    FieldDefinition(index: 3, name: 'RadiusMax', description: 'RadiusMax', format: DbcFieldFormat.float),
  ],
);
