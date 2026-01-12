import 'package:warcrafty/src/definition/base/field_definition.dart';
import 'package:warcrafty/src/definition/base/structure_definition.dart';
import 'package:warcrafty/src/core/field_format.dart';

/// CinematicSequences 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
const cinematicSequences = DbcStructureDefinition(
  name: 'CinematicSequences',
  format: 'niiiiiiiii',
  fields: [
    FieldDefinition(index: 0, name: 'ID', description: 'ID', format: DbcFieldFormat.indexField),
    FieldDefinition(index: 1, name: 'SoundID', description: 'SoundID', format: DbcFieldFormat.intType),
    FieldDefinition(index: 2, name: 'Camera0', description: 'Camera 0', format: DbcFieldFormat.intType),
    FieldDefinition(index: 3, name: 'Camera1', description: 'Camera 1', format: DbcFieldFormat.intType),
    FieldDefinition(index: 4, name: 'Camera2', description: 'Camera 2', format: DbcFieldFormat.intType),
    FieldDefinition(index: 5, name: 'Camera3', description: 'Camera 3', format: DbcFieldFormat.intType),
    FieldDefinition(index: 6, name: 'Camera4', description: 'Camera 4', format: DbcFieldFormat.intType),
    FieldDefinition(index: 7, name: 'Camera5', description: 'Camera 5', format: DbcFieldFormat.intType),
    FieldDefinition(index: 8, name: 'Camera6', description: 'Camera 6', format: DbcFieldFormat.intType),
    FieldDefinition(index: 9, name: 'Camera7', description: 'Camera 7', format: DbcFieldFormat.intType),
  ],
);
