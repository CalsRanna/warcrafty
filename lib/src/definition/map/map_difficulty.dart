import 'package:warcrafty/src/definition/base/field_definition.dart';
import 'package:warcrafty/src/definition/base/structure_definition.dart';
import 'package:warcrafty/src/core/field_format.dart';
import 'package:warcrafty/src/definition/common/locale_fields.dart';

/// MapDifficulty 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
final mapDifficulty = DbcStructureDefinition(
  name: 'MapDifficulty',
  format: 'niisssssssssssssssssiis',
  fields: [
    const FieldDefinition(index: 0, name: 'ID', description: 'ID', format: DbcFieldFormat.indexField),
    const FieldDefinition(index: 1, name: 'MapID', description: 'MapID', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 2, name: 'Difficulty', description: 'Difficulty', format: DbcFieldFormat.intType),
    ...createLocaleFieldsWithFlag(3, 'Message_lang', 'Message_lang'),
    const FieldDefinition(index: 20, name: 'RaidDuration', description: 'RaidDuration', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 21, name: 'MaxPlayers', description: 'MaxPlayers', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 22, name: 'Difficultystring', description: 'Difficultystring', format: DbcFieldFormat.string),
  ],
);
