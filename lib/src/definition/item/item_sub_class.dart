import 'package:warcrafty/src/definition/base/field_definition.dart';
import 'package:warcrafty/src/definition/base/structure_definition.dart';
import 'package:warcrafty/src/core/field_format.dart';
import 'package:warcrafty/src/definition/common/locale_fields.dart';

/// ItemSubClass 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
final itemSubClass = DbcStructureDefinition(
  name: 'ItemSubClass',
  format: 'iiiiiiiiiissssssssssssssssssssssssssssssssss',
  fields: [
    const FieldDefinition(index: 0, name: 'ClassID', description: 'ClassID', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 1, name: 'SubClassID', description: 'SubClassID', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 2, name: 'PrerequisiteProficiency', description: 'PrerequisiteProficiency', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 3, name: 'PostrequisiteProficiency', description: 'PostrequisiteProficiency', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 4, name: 'Flags', description: 'Flags', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 5, name: 'DisplayFlags', description: 'DisplayFlags', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 6, name: 'WeaponParrySeq', description: 'WeaponParrySeq', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 7, name: 'WeaponReadySeq', description: 'WeaponReadySeq', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 8, name: 'WeaponAttackSeq', description: 'WeaponAttackSeq', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 9, name: 'WeaponSwingSize', description: 'WeaponSwingSize', format: DbcFieldFormat.intType),
    ...createLocaleFieldsWithFlag(10, 'DisplayName_lang', 'DisplayName_lang'),
    ...createLocaleFieldsWithFlag(27, 'VerboseName_lang', 'VerboseName_lang'),
  ],
);
