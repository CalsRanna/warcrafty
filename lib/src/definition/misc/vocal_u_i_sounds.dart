import 'package:warcrafty/src/definition/base/field_definition.dart';
import 'package:warcrafty/src/definition/base/structure_definition.dart';
import 'package:warcrafty/src/core/field_format.dart';

/// VocalUISounds 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
const vocalUISounds = DbcStructureDefinition(
  name: 'VocalUISounds',
  format: 'niiiiii',
  fields: [
    FieldDefinition(index: 0, name: 'ID', description: 'ID', format: DbcFieldFormat.indexField),
    FieldDefinition(index: 1, name: 'VocalUIEnum', description: 'VocalUIEnum', format: DbcFieldFormat.intType),
    FieldDefinition(index: 2, name: 'RaceID', description: 'RaceID', format: DbcFieldFormat.intType),
    FieldDefinition(index: 3, name: 'NormalSoundID0', description: 'NormalSoundID 0', format: DbcFieldFormat.intType),
    FieldDefinition(index: 4, name: 'NormalSoundID1', description: 'NormalSoundID 1', format: DbcFieldFormat.intType),
    FieldDefinition(index: 5, name: 'PissedSoundID0', description: 'PissedSoundID 0', format: DbcFieldFormat.intType),
    FieldDefinition(index: 6, name: 'PissedSoundID1', description: 'PissedSoundID 1', format: DbcFieldFormat.intType),
  ],
);
