import 'package:warcrafty/src/definition/base/field_definition.dart';
import 'package:warcrafty/src/definition/base/structure_definition.dart';
import 'package:warcrafty/src/core/field_format.dart';

/// FactionTemplate 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
const factionTemplate = DbcStructureDefinition(
  name: 'FactionTemplate',
  format: 'niiiiiiiiiiiii',
  fields: [
    FieldDefinition(index: 0, name: 'ID', description: 'ID', format: DbcFieldFormat.indexField),
    FieldDefinition(index: 1, name: 'Faction', description: 'Faction', format: DbcFieldFormat.intType),
    FieldDefinition(index: 2, name: 'Flags', description: 'Flags', format: DbcFieldFormat.intType),
    FieldDefinition(index: 3, name: 'FactionGroup', description: 'FactionGroup', format: DbcFieldFormat.intType),
    FieldDefinition(index: 4, name: 'FriendGroup', description: 'FriendGroup', format: DbcFieldFormat.intType),
    FieldDefinition(index: 5, name: 'EnemyGroup', description: 'EnemyGroup', format: DbcFieldFormat.intType),
    FieldDefinition(index: 6, name: 'Enemies0', description: 'Enemies 0', format: DbcFieldFormat.intType),
    FieldDefinition(index: 7, name: 'Enemies1', description: 'Enemies 1', format: DbcFieldFormat.intType),
    FieldDefinition(index: 8, name: 'Enemies2', description: 'Enemies 2', format: DbcFieldFormat.intType),
    FieldDefinition(index: 9, name: 'Enemies3', description: 'Enemies 3', format: DbcFieldFormat.intType),
    FieldDefinition(index: 10, name: 'Friend0', description: 'Friend 0', format: DbcFieldFormat.intType),
    FieldDefinition(index: 11, name: 'Friend1', description: 'Friend 1', format: DbcFieldFormat.intType),
    FieldDefinition(index: 12, name: 'Friend2', description: 'Friend 2', format: DbcFieldFormat.intType),
    FieldDefinition(index: 13, name: 'Friend3', description: 'Friend 3', format: DbcFieldFormat.intType),
  ],
);
