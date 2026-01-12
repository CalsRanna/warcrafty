import 'package:warcrafty/src/core/field_definition.dart';
import 'package:warcrafty/src/core/structure_definition.dart';
import 'package:warcrafty/src/core/field_format.dart';
import 'package:warcrafty/src/core/locale_fields.dart';

/// Faction 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
final faction = DbcStructureDefinition(
  name: 'Faction',
  format: 'niiiiiiiiiiiiiiiiiiffiissssssssssssssssssssssssssssssssss',
  fields: [
    const FieldDefinition(index: 0, name: 'ID', description: 'ID', format: DbcFieldFormat.indexField),
    const FieldDefinition(index: 1, name: 'ReputationIndex', description: 'ReputationIndex', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 2, name: 'ReputationRaceMask0', description: 'ReputationRaceMask 0', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 3, name: 'ReputationRaceMask1', description: 'ReputationRaceMask 1', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 4, name: 'ReputationRaceMask2', description: 'ReputationRaceMask 2', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 5, name: 'ReputationRaceMask3', description: 'ReputationRaceMask 3', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 6, name: 'ReputationClassMask0', description: 'ReputationClassMask 0', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 7, name: 'ReputationClassMask1', description: 'ReputationClassMask 1', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 8, name: 'ReputationClassMask2', description: 'ReputationClassMask 2', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 9, name: 'ReputationClassMask3', description: 'ReputationClassMask 3', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 10, name: 'ReputationBase0', description: 'ReputationBase 0', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 11, name: 'ReputationBase1', description: 'ReputationBase 1', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 12, name: 'ReputationBase2', description: 'ReputationBase 2', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 13, name: 'ReputationBase3', description: 'ReputationBase 3', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 14, name: 'ReputationFlags0', description: 'ReputationFlags 0', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 15, name: 'ReputationFlags1', description: 'ReputationFlags 1', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 16, name: 'ReputationFlags2', description: 'ReputationFlags 2', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 17, name: 'ReputationFlags3', description: 'ReputationFlags 3', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 18, name: 'ParentFactionID', description: 'ParentFactionID', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 19, name: 'ParentFactionMod0', description: 'ParentFactionMod 0', format: DbcFieldFormat.float),
    const FieldDefinition(index: 20, name: 'ParentFactionMod1', description: 'ParentFactionMod 1', format: DbcFieldFormat.float),
    const FieldDefinition(index: 21, name: 'ParentFactionCap0', description: 'ParentFactionCap 0', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 22, name: 'ParentFactionCap1', description: 'ParentFactionCap 1', format: DbcFieldFormat.intType),
    ...createLocaleFieldsWithFlag(23, 'Name_lang', 'Name_lang'),
    ...createLocaleFieldsWithFlag(40, 'Description_lang', 'Description_lang'),
  ],
);
