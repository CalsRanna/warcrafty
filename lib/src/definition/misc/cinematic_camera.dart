import 'package:warcrafty/src/definition/base/field_definition.dart';
import 'package:warcrafty/src/definition/base/structure_definition.dart';
import 'package:warcrafty/src/core/field_format.dart';

/// CinematicCamera 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
const cinematicCamera = DbcStructureDefinition(
  name: 'CinematicCamera',
  format: 'nsiffff',
  fields: [
    FieldDefinition(index: 0, name: 'ID', description: 'ID', format: DbcFieldFormat.indexField),
    FieldDefinition(index: 1, name: 'Model', description: 'Model', format: DbcFieldFormat.string),
    FieldDefinition(index: 2, name: 'SoundID', description: 'SoundID', format: DbcFieldFormat.intType),
    FieldDefinition(index: 3, name: 'Origin0', description: 'Origin 0', format: DbcFieldFormat.float),
    FieldDefinition(index: 4, name: 'Origin1', description: 'Origin 1', format: DbcFieldFormat.float),
    FieldDefinition(index: 5, name: 'Origin2', description: 'Origin 2', format: DbcFieldFormat.float),
    FieldDefinition(index: 6, name: 'OriginFacing', description: 'OriginFacing', format: DbcFieldFormat.float),
  ],
);
