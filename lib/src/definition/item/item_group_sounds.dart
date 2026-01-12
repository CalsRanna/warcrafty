import 'package:warcrafty/src/definition/base/field_definition.dart';
import 'package:warcrafty/src/definition/base/structure_definition.dart';
import 'package:warcrafty/src/core/field_format.dart';

/// ItemGroupSounds 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
const itemGroupSounds = DbcStructureDefinition(
  name: 'ItemGroupSounds',
  format: 'niiii',
  fields: [
    FieldDefinition(index: 0, name: 'ID', description: 'ID', format: DbcFieldFormat.indexField),
    FieldDefinition(index: 1, name: 'Sound0', description: 'Sound 0', format: DbcFieldFormat.intType),
    FieldDefinition(index: 2, name: 'Sound1', description: 'Sound 1', format: DbcFieldFormat.intType),
    FieldDefinition(index: 3, name: 'Sound2', description: 'Sound 2', format: DbcFieldFormat.intType),
    FieldDefinition(index: 4, name: 'Sound3', description: 'Sound 3', format: DbcFieldFormat.intType),
  ],
);
