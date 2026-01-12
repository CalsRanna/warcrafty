import 'package:warcrafty/src/core/field_definition.dart';
import 'package:warcrafty/src/core/structure_definition.dart';
import 'package:warcrafty/src/core/field_format.dart';
import 'package:warcrafty/src/core/locale_fields.dart';

/// DanceMoves 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
final danceMoves = DbcStructureDefinition(
  name: 'DanceMoves',
  format: 'niiiissssssssssssssssssi',
  fields: [
    const FieldDefinition(index: 0, name: 'ID', description: 'ID', format: DbcFieldFormat.indexField),
    const FieldDefinition(index: 1, name: 'Type', description: 'Type', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 2, name: 'Param', description: 'Param', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 3, name: 'Fallback', description: 'Fallback', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 4, name: 'Racemask', description: 'Racemask', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 5, name: 'Internal_name', description: 'Internal_name', format: DbcFieldFormat.string),
    ...createLocaleFieldsWithFlag(6, 'Name_lang', 'Name_lang'),
    const FieldDefinition(index: 23, name: 'LockID', description: 'LockID', format: DbcFieldFormat.intType),
  ],
);
