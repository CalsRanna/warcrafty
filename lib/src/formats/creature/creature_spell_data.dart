/// CreatureSpellData.dbc - 生物法术数据格式
library;

import '../base/field_definition.dart';
import '../base/structure_definition.dart';
import '../../core/field_format.dart';

/// CreatureSpellData 格式字符串
const String creatureSpellDataFormat = 'niiiixxxx';

/// CreatureSpellData 结构定义
const DbcStructureDefinition creatureSpellData = DbcStructureDefinition(
  name: 'CreatureSpellData',
  format: creatureSpellDataFormat,
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
