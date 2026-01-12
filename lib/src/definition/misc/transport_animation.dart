import 'package:warcrafty/src/definition/base/field_definition.dart';
import 'package:warcrafty/src/definition/base/structure_definition.dart';
import 'package:warcrafty/src/core/field_format.dart';

/// TransportAnimation 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
const transportAnimation = DbcStructureDefinition(
  name: 'TransportAnimation',
  format: 'niifffi',
  fields: [
    FieldDefinition(index: 0, name: 'ID', description: 'ID', format: DbcFieldFormat.indexField),
    FieldDefinition(index: 1, name: 'TransportID', description: 'TransportID', format: DbcFieldFormat.intType),
    FieldDefinition(index: 2, name: 'TimeIndex', description: 'TimeIndex', format: DbcFieldFormat.intType),
    FieldDefinition(index: 3, name: 'Pos0', description: 'Pos 0', format: DbcFieldFormat.float),
    FieldDefinition(index: 4, name: 'Pos1', description: 'Pos 1', format: DbcFieldFormat.float),
    FieldDefinition(index: 5, name: 'Pos2', description: 'Pos 2', format: DbcFieldFormat.float),
    FieldDefinition(index: 6, name: 'SequenceID', description: 'SequenceID', format: DbcFieldFormat.intType),
  ],
);
