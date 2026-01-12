import 'package:warcrafty/src/core/field_definition.dart';
import 'package:warcrafty/src/core/structure_definition.dart';
import 'package:warcrafty/src/core/field_format.dart';

/// TransportRotation 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
const transportRotation = DbcStructureDefinition(
  name: 'TransportRotation',
  format: 'niiffff',
  fields: [
    FieldDefinition(index: 0, name: 'ID', description: 'ID', format: DbcFieldFormat.indexField),
    FieldDefinition(index: 1, name: 'GameObjectsID', description: 'GameObjectsID', format: DbcFieldFormat.intType),
    FieldDefinition(index: 2, name: 'TimeIndex', description: 'TimeIndex', format: DbcFieldFormat.intType),
    FieldDefinition(index: 3, name: 'Rot0', description: 'Rot 0', format: DbcFieldFormat.float),
    FieldDefinition(index: 4, name: 'Rot1', description: 'Rot 1', format: DbcFieldFormat.float),
    FieldDefinition(index: 5, name: 'Rot2', description: 'Rot 2', format: DbcFieldFormat.float),
    FieldDefinition(index: 6, name: 'Rot3', description: 'Rot 3', format: DbcFieldFormat.float),
  ],
);
