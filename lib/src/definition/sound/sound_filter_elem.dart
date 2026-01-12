import 'package:warcrafty/src/core/field_definition.dart';
import 'package:warcrafty/src/core/structure_definition.dart';
import 'package:warcrafty/src/core/field_format.dart';

/// SoundFilterElem 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
const soundFilterElem = DbcStructureDefinition(
  name: 'SoundFilterElem',
  format: 'niiifffffffff',
  fields: [
    FieldDefinition(index: 0, name: 'ID', description: 'ID', format: DbcFieldFormat.indexField),
    FieldDefinition(index: 1, name: 'SoundFilterID', description: 'SoundFilterID', format: DbcFieldFormat.intType),
    FieldDefinition(index: 2, name: 'OrderIndex', description: 'OrderIndex', format: DbcFieldFormat.intType),
    FieldDefinition(index: 3, name: 'FilterType', description: 'FilterType', format: DbcFieldFormat.intType),
    FieldDefinition(index: 4, name: 'Params0', description: 'Params 0', format: DbcFieldFormat.float),
    FieldDefinition(index: 5, name: 'Params1', description: 'Params 1', format: DbcFieldFormat.float),
    FieldDefinition(index: 6, name: 'Params2', description: 'Params 2', format: DbcFieldFormat.float),
    FieldDefinition(index: 7, name: 'Params3', description: 'Params 3', format: DbcFieldFormat.float),
    FieldDefinition(index: 8, name: 'Params4', description: 'Params 4', format: DbcFieldFormat.float),
    FieldDefinition(index: 9, name: 'Params5', description: 'Params 5', format: DbcFieldFormat.float),
    FieldDefinition(index: 10, name: 'Params6', description: 'Params 6', format: DbcFieldFormat.float),
    FieldDefinition(index: 11, name: 'Params7', description: 'Params 7', format: DbcFieldFormat.float),
    FieldDefinition(index: 12, name: 'Params8', description: 'Params 8', format: DbcFieldFormat.float),
  ],
);
