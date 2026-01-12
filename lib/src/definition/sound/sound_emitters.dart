import 'package:warcrafty/src/definition/base/field_definition.dart';
import 'package:warcrafty/src/definition/base/structure_definition.dart';
import 'package:warcrafty/src/core/field_format.dart';

/// SoundEmitters 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
const soundEmitters = DbcStructureDefinition(
  name: 'SoundEmitters',
  format: 'nffffffiis',
  fields: [
    FieldDefinition(index: 0, name: 'ID', description: 'ID', format: DbcFieldFormat.indexField),
    FieldDefinition(index: 1, name: 'Position0', description: 'Position 0', format: DbcFieldFormat.float),
    FieldDefinition(index: 2, name: 'Position1', description: 'Position 1', format: DbcFieldFormat.float),
    FieldDefinition(index: 3, name: 'Position2', description: 'Position 2', format: DbcFieldFormat.float),
    FieldDefinition(index: 4, name: 'Direction0', description: 'Direction 0', format: DbcFieldFormat.float),
    FieldDefinition(index: 5, name: 'Direction1', description: 'Direction 1', format: DbcFieldFormat.float),
    FieldDefinition(index: 6, name: 'Direction2', description: 'Direction 2', format: DbcFieldFormat.float),
    FieldDefinition(index: 7, name: 'SoundEntryAdvancedID', description: 'SoundEntryAdvancedID', format: DbcFieldFormat.intType),
    FieldDefinition(index: 8, name: 'MapID', description: 'MapID', format: DbcFieldFormat.intType),
    FieldDefinition(index: 9, name: 'Name', description: 'Name', format: DbcFieldFormat.string),
  ],
);
