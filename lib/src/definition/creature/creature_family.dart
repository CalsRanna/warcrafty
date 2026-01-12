import 'package:warcrafty/src/definition/base/field_definition.dart';
import 'package:warcrafty/src/definition/base/structure_definition.dart';
import 'package:warcrafty/src/core/field_format.dart';
import 'package:warcrafty/src/definition/common/locale_fields.dart';

/// CreatureFamily 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
final creatureFamily = DbcStructureDefinition(
  name: 'CreatureFamily',
  format: 'nfifiiiiiissssssssssssssssss',
  fields: [
    const FieldDefinition(index: 0, name: 'ID', description: 'ID', format: DbcFieldFormat.indexField),
    const FieldDefinition(index: 1, name: 'MinScale', description: 'MinScale', format: DbcFieldFormat.float),
    const FieldDefinition(index: 2, name: 'MinScaleLevel', description: 'MinScaleLevel', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 3, name: 'MaxScale', description: 'MaxScale', format: DbcFieldFormat.float),
    const FieldDefinition(index: 4, name: 'MaxScaleLevel', description: 'MaxScaleLevel', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 5, name: 'SkillLine0', description: 'SkillLine 0', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 6, name: 'SkillLine1', description: 'SkillLine 1', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 7, name: 'PetFoodMask', description: 'PetFoodMask', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 8, name: 'PetTalentType', description: 'PetTalentType', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 9, name: 'CategoryEnumID', description: 'CategoryEnumID', format: DbcFieldFormat.intType),
    ...createLocaleFieldsWithFlag(10, 'Name_lang', 'Name_lang'),
    const FieldDefinition(index: 27, name: 'IconFile', description: 'IconFile', format: DbcFieldFormat.string),
  ],
);
