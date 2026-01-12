import 'package:warcrafty/src/definition/base/field_definition.dart';
import 'package:warcrafty/src/definition/base/structure_definition.dart';
import 'package:warcrafty/src/core/field_format.dart';
import 'package:warcrafty/src/definition/common/locale_fields.dart';

/// ItemRandomSuffix 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
final itemRandomSuffix = DbcStructureDefinition(
  name: 'ItemRandomSuffix',
  format: 'nssssssssssssssssssiiiiiiiiii',
  fields: [
    const FieldDefinition(index: 0, name: 'ID', description: 'ID', format: DbcFieldFormat.indexField),
    ...createLocaleFieldsWithFlag(1, 'Name_lang', 'Name_lang'),
    const FieldDefinition(index: 18, name: 'InternalName', description: 'InternalName', format: DbcFieldFormat.string),
    const FieldDefinition(index: 19, name: 'Enchantment0', description: 'Enchantment 0', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 20, name: 'Enchantment1', description: 'Enchantment 1', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 21, name: 'Enchantment2', description: 'Enchantment 2', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 22, name: 'Enchantment3', description: 'Enchantment 3', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 23, name: 'Enchantment4', description: 'Enchantment 4', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 24, name: 'AllocationPct0', description: 'AllocationPct 0', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 25, name: 'AllocationPct1', description: 'AllocationPct 1', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 26, name: 'AllocationPct2', description: 'AllocationPct 2', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 27, name: 'AllocationPct3', description: 'AllocationPct 3', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 28, name: 'AllocationPct4', description: 'AllocationPct 4', format: DbcFieldFormat.intType),
  ],
);
