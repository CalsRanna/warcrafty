import 'package:warcrafty/src/core/field_definition.dart';
import 'package:warcrafty/src/core/structure_definition.dart';
import 'package:warcrafty/src/core/field_format.dart';

/// SoundAmbience 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
const soundAmbience = DbcStructureDefinition(
  name: 'SoundAmbience',
  format: 'nii',
  fields: [
    FieldDefinition(index: 0, name: 'ID', description: 'ID', format: DbcFieldFormat.indexField),
    FieldDefinition(index: 1, name: 'AmbienceID0', description: 'AmbienceID 0', format: DbcFieldFormat.intType),
    FieldDefinition(index: 2, name: 'AmbienceID1', description: 'AmbienceID 1', format: DbcFieldFormat.intType),
  ],
);
