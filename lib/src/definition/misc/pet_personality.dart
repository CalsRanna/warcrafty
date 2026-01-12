import 'package:warcrafty/src/definition/base/field_definition.dart';
import 'package:warcrafty/src/definition/base/structure_definition.dart';
import 'package:warcrafty/src/core/field_format.dart';
import 'package:warcrafty/src/definition/common/locale_fields.dart';

/// PetPersonality 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
final petPersonality = DbcStructureDefinition(
  name: 'PetPersonality',
  format: 'nsssssssssssssssssiiifff',
  fields: [
    const FieldDefinition(index: 0, name: 'ID', description: 'ID', format: DbcFieldFormat.indexField),
    ...createLocaleFieldsWithFlag(1, 'Name_lang', 'Name_lang'),
    const FieldDefinition(index: 18, name: 'HappinessThreshold0', description: 'HappinessThreshold 0', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 19, name: 'HappinessThreshold1', description: 'HappinessThreshold 1', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 20, name: 'HappinessThreshold2', description: 'HappinessThreshold 2', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 21, name: 'HappinessDamage0', description: 'HappinessDamage 0', format: DbcFieldFormat.float),
    const FieldDefinition(index: 22, name: 'HappinessDamage1', description: 'HappinessDamage 1', format: DbcFieldFormat.float),
    const FieldDefinition(index: 23, name: 'HappinessDamage2', description: 'HappinessDamage 2', format: DbcFieldFormat.float),
  ],
);
