import 'package:warcrafty/src/core/field_definition.dart';
import 'package:warcrafty/src/core/structure_definition.dart';
import 'package:warcrafty/src/core/field_format.dart';
import 'package:warcrafty/src/core/locale_fields.dart';

/// ItemRandomProperties 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
final itemRandomProperties = DbcStructureDefinition(
  name: 'ItemRandomProperties',
  format: 'nsiiiiisssssssssssssssss',
  fields: [
    const FieldDefinition(index: 0, name: 'ID', description: 'ID', format: DbcFieldFormat.indexField),
    const FieldDefinition(index: 1, name: 'Name', description: 'Name', format: DbcFieldFormat.string),
    const FieldDefinition(index: 2, name: 'Enchantment0', description: 'Enchantment 0', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 3, name: 'Enchantment1', description: 'Enchantment 1', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 4, name: 'Enchantment2', description: 'Enchantment 2', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 5, name: 'Enchantment3', description: 'Enchantment 3', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 6, name: 'Enchantment4', description: 'Enchantment 4', format: DbcFieldFormat.intType),
    ...createLocaleFieldsWithFlag(7, 'Name_lang', 'Name_lang'),
  ],
);
