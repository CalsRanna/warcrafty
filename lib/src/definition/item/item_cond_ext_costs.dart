import 'package:warcrafty/src/definition/base/field_definition.dart';
import 'package:warcrafty/src/definition/base/structure_definition.dart';
import 'package:warcrafty/src/core/field_format.dart';

/// ItemCondExtCosts 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
const itemCondExtCosts = DbcStructureDefinition(
  name: 'ItemCondExtCosts',
  format: 'niii',
  fields: [
    FieldDefinition(index: 0, name: 'ID', description: 'ID', format: DbcFieldFormat.indexField),
    FieldDefinition(index: 1, name: 'CondExtendedCost', description: 'CondExtendedCost', format: DbcFieldFormat.intType),
    FieldDefinition(index: 2, name: 'ItemExtendedCostEntry', description: 'ItemExtendedCostEntry', format: DbcFieldFormat.intType),
    FieldDefinition(index: 3, name: 'ArenaSeason', description: 'ArenaSeason', format: DbcFieldFormat.intType),
  ],
);
