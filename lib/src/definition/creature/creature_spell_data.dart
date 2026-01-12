import 'package:warcrafty/src/definition/base/field_definition.dart';
import 'package:warcrafty/src/definition/base/structure_definition.dart';
import 'package:warcrafty/src/core/field_format.dart';

/// CreatureSpellData 格式字符串

/// CreatureSpellData 结构定义
const creatureSpellData = DbcStructureDefinition(
  name: 'CreatureSpellData',
  format: 'niiiixxxx',
  fields: [
    FieldDefinition(index: 0, name: 'ID', description: 'ID', format: DbcFieldFormat.intType),
    FieldDefinition(index: 1, name: 'Spell1', description: '法术 1', format: DbcFieldFormat.intType),
    FieldDefinition(index: 2, name: 'Spell2', description: '法术 2', format: DbcFieldFormat.intType),
    FieldDefinition(index: 3, name: 'Spell3', description: '法术 3', format: DbcFieldFormat.intType),
    FieldDefinition(index: 4, name: 'Spell4', description: '法术 4', format: DbcFieldFormat.intType),
    FieldDefinition(index: 5, name: 'Spell5', description: '法术 5', format: DbcFieldFormat.na),
    FieldDefinition(index: 6, name: 'Spell6', description: '法术 6', format: DbcFieldFormat.na),
    FieldDefinition(index: 7, name: 'Spell7', description: '法术 7', format: DbcFieldFormat.na),
    FieldDefinition(index: 8, name: 'Spell8', description: '法术 8', format: DbcFieldFormat.na),
  ],
);
