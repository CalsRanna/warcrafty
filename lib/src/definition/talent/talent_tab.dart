import 'package:warcrafty/src/definition/base/field_definition.dart';
import 'package:warcrafty/src/definition/base/structure_definition.dart';
import 'package:warcrafty/src/core/field_format.dart';
import 'package:warcrafty/src/definition/common/locale_fields.dart';

/// TalentTab 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
final talentTab = DbcStructureDefinition(
  name: 'TalentTab',
  format: 'nsssssssssssssssssiiiiis',
  fields: [
    const FieldDefinition(index: 0, name: 'ID', description: 'ID', format: DbcFieldFormat.indexField),
    ...createLocaleFieldsWithFlag(1, 'Name_lang', 'Name_lang'),
    const FieldDefinition(index: 18, name: 'SpellIconID', description: 'SpellIconID', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 19, name: 'RaceMask', description: 'RaceMask', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 20, name: 'ClassMask', description: 'ClassMask', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 21, name: 'CategoryEnumID', description: 'CategoryEnumID', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 22, name: 'OrderIndex', description: 'OrderIndex', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 23, name: 'BackgroundFile', description: 'BackgroundFile', format: DbcFieldFormat.string),
  ],
);
