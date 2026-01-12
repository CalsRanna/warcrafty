import 'package:warcrafty/src/definition/base/field_definition.dart';
import 'package:warcrafty/src/definition/base/structure_definition.dart';
import 'package:warcrafty/src/core/field_format.dart';

/// SpellRuneCost 格式字符串

/// SpellRuneCost 结构定义
const spellRuneCost = DbcStructureDefinition(
  name: 'SpellRuneCost',
  format: 'niiii',
  fields: [
    FieldDefinition(index: 0, name: 'ID', description: 'ID', format: DbcFieldFormat.intType),
    FieldDefinition(index: 1, name: 'BloodCost', description: '鲜血符文消耗', format: DbcFieldFormat.intType),
    FieldDefinition(index: 2, name: 'FrostCost', description: '冰霜符文消耗', format: DbcFieldFormat.intType),
    FieldDefinition(index: 3, name: 'UnholyCost', description: '邪恶符文消耗', format: DbcFieldFormat.intType),
    FieldDefinition(index: 4, name: 'RunicPowerGain', description: '符文能量获得', format: DbcFieldFormat.intType),
  ],
);
