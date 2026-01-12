import 'package:warcrafty/src/core/field_definition.dart';
import 'package:warcrafty/src/core/structure_definition.dart';
import 'package:warcrafty/src/core/field_format.dart';
import 'package:warcrafty/src/core/locale_fields.dart';

/// TaxiNodes 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
final taxiNodes = DbcStructureDefinition(
  name: 'TaxiNodes',
  format: 'nifffsssssssssssssssssii',
  fields: [
    const FieldDefinition(index: 0, name: 'ID', description: 'ID', format: DbcFieldFormat.indexField),
    const FieldDefinition(index: 1, name: 'ContinentID', description: 'ContinentID', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 2, name: 'Pos0', description: 'Pos 0', format: DbcFieldFormat.float),
    const FieldDefinition(index: 3, name: 'Pos1', description: 'Pos 1', format: DbcFieldFormat.float),
    const FieldDefinition(index: 4, name: 'Pos2', description: 'Pos 2', format: DbcFieldFormat.float),
    ...createLocaleFieldsWithFlag(5, 'Name_lang', 'Name_lang'),
    const FieldDefinition(index: 22, name: 'MountCreatureID0', description: 'MountCreatureID 0', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 23, name: 'MountCreatureID1', description: 'MountCreatureID 1', format: DbcFieldFormat.intType),
  ],
);
