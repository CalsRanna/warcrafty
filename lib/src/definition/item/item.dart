import 'package:warcrafty/src/definition/base/field_definition.dart';
import 'package:warcrafty/src/definition/base/structure_definition.dart';
import 'package:warcrafty/src/core/field_format.dart';

/// Item 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
const item = DbcStructureDefinition(
  name: 'Item',
  format: 'niiiiiii',
  fields: [
    FieldDefinition(index: 0, name: 'ID', description: 'ID', format: DbcFieldFormat.indexField),
    FieldDefinition(index: 1, name: 'ClassID', description: 'ClassID', format: DbcFieldFormat.intType),
    FieldDefinition(index: 2, name: 'SubclassID', description: 'SubclassID', format: DbcFieldFormat.intType),
    FieldDefinition(index: 3, name: 'Sound_override_subclassID', description: 'Sound_override_subclassID', format: DbcFieldFormat.intType),
    FieldDefinition(index: 4, name: 'Material', description: 'Material', format: DbcFieldFormat.intType),
    FieldDefinition(index: 5, name: 'DisplayInfoID', description: 'DisplayInfoID', format: DbcFieldFormat.intType),
    FieldDefinition(index: 6, name: 'InventoryType', description: 'InventoryType', format: DbcFieldFormat.intType),
    FieldDefinition(index: 7, name: 'SheatheType', description: 'SheatheType', format: DbcFieldFormat.intType),
  ],
);
