import 'package:warcrafty/src/definition/base/field_definition.dart';
import 'package:warcrafty/src/definition/base/structure_definition.dart';
import 'package:warcrafty/src/core/field_format.dart';

/// FactionTemplate 格式字符串

/// FactionTemplate 结构定义
const factionTemplate = DbcStructureDefinition(
  name: 'FactionTemplate',
  format: 'niiiiiiiiiiiii',
  fields: [
    FieldDefinition(index: 0, name: 'ID', description: '派系模板 ID', format: DbcFieldFormat.intType),
    FieldDefinition(index: 1, name: 'Faction', description: '派系 ID', format: DbcFieldFormat.intType),
    FieldDefinition(index: 2, name: 'FactionFlags', description: '派系标志', format: DbcFieldFormat.intType),
    FieldDefinition(index: 3, name: 'OurMask', description: '我方掩码', format: DbcFieldFormat.intType),
    FieldDefinition(index: 4, name: 'FriendlyMask', description: '友好掩码', format: DbcFieldFormat.intType),
    FieldDefinition(index: 5, name: 'HostileMask', description: '敌对掩码', format: DbcFieldFormat.intType),
    FieldDefinition(index: 6, name: 'EnemyFaction0', description: '敌对派系 0', format: DbcFieldFormat.intType),
    FieldDefinition(index: 7, name: 'EnemyFaction1', description: '敌对派系 1', format: DbcFieldFormat.intType),
    FieldDefinition(index: 8, name: 'EnemyFaction2', description: '敌对派系 2', format: DbcFieldFormat.intType),
    FieldDefinition(index: 9, name: 'EnemyFaction3', description: '敌对派系 3', format: DbcFieldFormat.intType),
    FieldDefinition(index: 10, name: 'FriendFaction0', description: '友好派系 0', format: DbcFieldFormat.intType),
    FieldDefinition(index: 11, name: 'FriendFaction1', description: '友好派系 1', format: DbcFieldFormat.intType),
    FieldDefinition(index: 12, name: 'FriendFaction2', description: '友好派系 2', format: DbcFieldFormat.intType),
    FieldDefinition(index: 13, name: 'FriendFaction3', description: '友好派系 3', format: DbcFieldFormat.intType),
  ],
);
