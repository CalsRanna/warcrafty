import 'package:warcrafty/src/core/field_definition.dart';
import 'package:warcrafty/src/core/structure_definition.dart';
import 'package:warcrafty/src/core/field_format.dart';

/// SkillRaceClassInfo 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
const skillRaceClassInfo = DbcStructureDefinition(
  name: 'SkillRaceClassInfo',
  format: 'niiiiiii',
  fields: [
    FieldDefinition(index: 0, name: 'ID', description: 'ID', format: DbcFieldFormat.indexField),
    FieldDefinition(index: 1, name: 'SkillID', description: 'SkillID', format: DbcFieldFormat.intType),
    FieldDefinition(index: 2, name: 'RaceMask', description: 'RaceMask', format: DbcFieldFormat.intType),
    FieldDefinition(index: 3, name: 'ClassMask', description: 'ClassMask', format: DbcFieldFormat.intType),
    FieldDefinition(index: 4, name: 'Flags', description: 'Flags', format: DbcFieldFormat.intType),
    FieldDefinition(index: 5, name: 'MinLevel', description: 'MinLevel', format: DbcFieldFormat.intType),
    FieldDefinition(index: 6, name: 'SkillTierID', description: 'SkillTierID', format: DbcFieldFormat.intType),
    FieldDefinition(index: 7, name: 'SkillCostIndex', description: 'SkillCostIndex', format: DbcFieldFormat.intType),
  ],
);
