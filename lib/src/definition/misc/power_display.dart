import 'package:warcrafty/src/core/field_definition.dart';
import 'package:warcrafty/src/core/structure_definition.dart';
import 'package:warcrafty/src/core/field_format.dart';

/// PowerDisplay 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
const powerDisplay = DbcStructureDefinition(
  name: 'PowerDisplay',
  format: 'nisbbb',
  fields: [
    FieldDefinition(index: 0, name: 'ID', description: 'ID', format: DbcFieldFormat.indexField),
    FieldDefinition(index: 1, name: 'ActualType', description: 'ActualType', format: DbcFieldFormat.intType),
    FieldDefinition(index: 2, name: 'GlobalStringBaseTag', description: 'GlobalStringBaseTag', format: DbcFieldFormat.string),
    FieldDefinition(index: 3, name: 'Red', description: 'Red', format: DbcFieldFormat.byte),
    FieldDefinition(index: 4, name: 'Green', description: 'Green', format: DbcFieldFormat.byte),
    FieldDefinition(index: 5, name: 'Blue', description: 'Blue', format: DbcFieldFormat.byte),
  ],
);
