import 'package:warcrafty/src/definition/base/field_definition.dart';
import 'package:warcrafty/src/definition/base/structure_definition.dart';
import 'package:warcrafty/src/core/field_format.dart';

/// CreatureSpellData 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
const creatureSpellData = DbcStructureDefinition(
  name: 'CreatureSpellData',
  format: 'niiiiiiii',
  fields: [
    FieldDefinition(index: 0, name: 'ID', description: 'ID', format: DbcFieldFormat.indexField),
    FieldDefinition(index: 1, name: 'Spells0', description: 'Spells 0', format: DbcFieldFormat.intType),
    FieldDefinition(index: 2, name: 'Spells1', description: 'Spells 1', format: DbcFieldFormat.intType),
    FieldDefinition(index: 3, name: 'Spells2', description: 'Spells 2', format: DbcFieldFormat.intType),
    FieldDefinition(index: 4, name: 'Spells3', description: 'Spells 3', format: DbcFieldFormat.intType),
    FieldDefinition(index: 5, name: 'Availability0', description: 'Availability 0', format: DbcFieldFormat.intType),
    FieldDefinition(index: 6, name: 'Availability1', description: 'Availability 1', format: DbcFieldFormat.intType),
    FieldDefinition(index: 7, name: 'Availability2', description: 'Availability 2', format: DbcFieldFormat.intType),
    FieldDefinition(index: 8, name: 'Availability3', description: 'Availability 3', format: DbcFieldFormat.intType),
  ],
);
