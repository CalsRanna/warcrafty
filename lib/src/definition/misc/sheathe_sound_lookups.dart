import 'package:warcrafty/src/definition/base/field_definition.dart';
import 'package:warcrafty/src/definition/base/structure_definition.dart';
import 'package:warcrafty/src/core/field_format.dart';

/// SheatheSoundLookups 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
const sheatheSoundLookups = DbcStructureDefinition(
  name: 'SheatheSoundLookups',
  format: 'niiiiii',
  fields: [
    FieldDefinition(index: 0, name: 'ID', description: 'ID', format: DbcFieldFormat.indexField),
    FieldDefinition(index: 1, name: 'ClassID', description: 'ClassID', format: DbcFieldFormat.intType),
    FieldDefinition(index: 2, name: 'SubclassID', description: 'SubclassID', format: DbcFieldFormat.intType),
    FieldDefinition(index: 3, name: 'Material', description: 'Material', format: DbcFieldFormat.intType),
    FieldDefinition(index: 4, name: 'CheckMaterial', description: 'CheckMaterial', format: DbcFieldFormat.intType),
    FieldDefinition(index: 5, name: 'SheatheSound', description: 'SheatheSound', format: DbcFieldFormat.intType),
    FieldDefinition(index: 6, name: 'UnsheatheSound', description: 'UnsheatheSound', format: DbcFieldFormat.intType),
  ],
);
