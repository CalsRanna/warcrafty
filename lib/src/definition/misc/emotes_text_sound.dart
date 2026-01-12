import 'package:warcrafty/src/definition/base/field_definition.dart';
import 'package:warcrafty/src/definition/base/structure_definition.dart';
import 'package:warcrafty/src/core/field_format.dart';

/// EmotesTextSound 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
const emotesTextSound = DbcStructureDefinition(
  name: 'EmotesTextSound',
  format: 'niiii',
  fields: [
    FieldDefinition(index: 0, name: 'ID', description: 'ID', format: DbcFieldFormat.indexField),
    FieldDefinition(index: 1, name: 'EmotesTextID', description: 'EmotesTextID', format: DbcFieldFormat.intType),
    FieldDefinition(index: 2, name: 'RaceID', description: 'RaceID', format: DbcFieldFormat.intType),
    FieldDefinition(index: 3, name: 'SexID', description: 'SexID', format: DbcFieldFormat.intType),
    FieldDefinition(index: 4, name: 'SoundID', description: 'SoundID', format: DbcFieldFormat.intType),
  ],
);
