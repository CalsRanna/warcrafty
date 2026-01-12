import 'package:warcrafty/src/core/field_definition.dart';
import 'package:warcrafty/src/core/structure_definition.dart';
import 'package:warcrafty/src/core/field_format.dart';

/// ScreenEffect 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
const screenEffect = DbcStructureDefinition(
  name: 'ScreenEffect',
  format: 'nsiiiiiiii',
  fields: [
    FieldDefinition(index: 0, name: 'ID', description: 'ID', format: DbcFieldFormat.indexField),
    FieldDefinition(index: 1, name: 'Name', description: 'Name', format: DbcFieldFormat.string),
    FieldDefinition(index: 2, name: 'Effect', description: 'Effect', format: DbcFieldFormat.intType),
    FieldDefinition(index: 3, name: 'Param0', description: 'Param 0', format: DbcFieldFormat.intType),
    FieldDefinition(index: 4, name: 'Param1', description: 'Param 1', format: DbcFieldFormat.intType),
    FieldDefinition(index: 5, name: 'Param2', description: 'Param 2', format: DbcFieldFormat.intType),
    FieldDefinition(index: 6, name: 'Param3', description: 'Param 3', format: DbcFieldFormat.intType),
    FieldDefinition(index: 7, name: 'LightParamsID', description: 'LightParamsID', format: DbcFieldFormat.intType),
    FieldDefinition(index: 8, name: 'SoundAmbienceID', description: 'SoundAmbienceID', format: DbcFieldFormat.intType),
    FieldDefinition(index: 9, name: 'ZoneMusicID', description: 'ZoneMusicID', format: DbcFieldFormat.intType),
  ],
);
