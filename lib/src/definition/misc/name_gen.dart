import 'package:warcrafty/src/core/field_definition.dart';
import 'package:warcrafty/src/core/structure_definition.dart';
import 'package:warcrafty/src/core/field_format.dart';

/// NameGen 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
const nameGen = DbcStructureDefinition(
  name: 'NameGen',
  format: 'nsii',
  fields: [
    FieldDefinition(index: 0, name: 'ID', description: 'ID', format: DbcFieldFormat.indexField),
    FieldDefinition(index: 1, name: 'Name', description: 'Name', format: DbcFieldFormat.string),
    FieldDefinition(index: 2, name: 'RaceID', description: 'RaceID', format: DbcFieldFormat.intType),
    FieldDefinition(index: 3, name: 'Sex', description: 'Sex', format: DbcFieldFormat.intType),
  ],
);
