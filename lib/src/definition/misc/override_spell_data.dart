import 'package:warcrafty/src/definition/base/field_definition.dart';
import 'package:warcrafty/src/definition/base/structure_definition.dart';
import 'package:warcrafty/src/core/field_format.dart';

/// OverrideSpellData 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
const overrideSpellData = DbcStructureDefinition(
  name: 'OverrideSpellData',
  format: 'niiiiiiiiiii',
  fields: [
    FieldDefinition(index: 0, name: 'ID', description: 'ID', format: DbcFieldFormat.indexField),
    FieldDefinition(index: 1, name: 'Spells0', description: 'Spells 0', format: DbcFieldFormat.intType),
    FieldDefinition(index: 2, name: 'Spells1', description: 'Spells 1', format: DbcFieldFormat.intType),
    FieldDefinition(index: 3, name: 'Spells2', description: 'Spells 2', format: DbcFieldFormat.intType),
    FieldDefinition(index: 4, name: 'Spells3', description: 'Spells 3', format: DbcFieldFormat.intType),
    FieldDefinition(index: 5, name: 'Spells4', description: 'Spells 4', format: DbcFieldFormat.intType),
    FieldDefinition(index: 6, name: 'Spells5', description: 'Spells 5', format: DbcFieldFormat.intType),
    FieldDefinition(index: 7, name: 'Spells6', description: 'Spells 6', format: DbcFieldFormat.intType),
    FieldDefinition(index: 8, name: 'Spells7', description: 'Spells 7', format: DbcFieldFormat.intType),
    FieldDefinition(index: 9, name: 'Spells8', description: 'Spells 8', format: DbcFieldFormat.intType),
    FieldDefinition(index: 10, name: 'Spells9', description: 'Spells 9', format: DbcFieldFormat.intType),
    FieldDefinition(index: 11, name: 'Flags', description: 'Flags', format: DbcFieldFormat.intType),
  ],
);
