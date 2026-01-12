import 'package:warcrafty/src/core/field_definition.dart';
import 'package:warcrafty/src/core/structure_definition.dart';
import 'package:warcrafty/src/core/field_format.dart';

/// CurrencyTypes 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
const currencyTypes = DbcStructureDefinition(
  name: 'CurrencyTypes',
  format: 'niii',
  fields: [
    FieldDefinition(index: 0, name: 'ID', description: 'ID', format: DbcFieldFormat.indexField),
    FieldDefinition(index: 1, name: 'ItemID', description: 'ItemID', format: DbcFieldFormat.intType),
    FieldDefinition(index: 2, name: 'CategoryID', description: 'CategoryID', format: DbcFieldFormat.intType),
    FieldDefinition(index: 3, name: 'BitIndex', description: 'BitIndex', format: DbcFieldFormat.intType),
  ],
);
