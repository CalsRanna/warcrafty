/// SpellRuneCost.dbc - 法术符文消耗格式
library;

import '../base/field_definition.dart';
import '../base/structure_definition.dart';
import '../../core/field_format.dart';

/// SpellRuneCost 格式字符串
const String spellRuneCostFormat = 'niiii';

/// SpellRuneCost 结构定义
const DbcStructureDefinition spellRuneCost = DbcStructureDefinition(
  name: 'SpellRuneCost',
  format: spellRuneCostFormat,
  fields: [
    FieldDefinition(index: 0, name: 'ID', description: 'ID', format: DbcFieldFormat.intType),
    FieldDefinition(index: 1, name: 'BloodCost', description: '鲜血符文消耗', format: DbcFieldFormat.intType),
    FieldDefinition(index: 2, name: 'FrostCost', description: '冰霜符文消耗', format: DbcFieldFormat.intType),
    FieldDefinition(index: 3, name: 'UnholyCost', description: '邪恶符文消耗', format: DbcFieldFormat.intType),
    FieldDefinition(index: 4, name: 'RunicPowerGain', description: '符文能量获得', format: DbcFieldFormat.intType),
  ],
);
