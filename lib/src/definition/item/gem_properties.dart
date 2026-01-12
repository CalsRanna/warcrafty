import 'package:warcrafty/src/core/field_definition.dart';
import 'package:warcrafty/src/core/structure_definition.dart';
import 'package:warcrafty/src/core/field_format.dart';

/// GemProperties 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
const gemProperties = DbcStructureDefinition(
  name: 'GemProperties',
  format: 'niiii',
  fields: [
    FieldDefinition(index: 0, name: 'ID', description: 'ID', format: DbcFieldFormat.indexField),
    FieldDefinition(index: 1, name: 'Enchant_ID', description: 'Enchant_ID', format: DbcFieldFormat.intType),
    FieldDefinition(index: 2, name: 'Maxcount_inv', description: 'Maxcount_inv', format: DbcFieldFormat.intType),
    FieldDefinition(index: 3, name: 'Maxcount_item', description: 'Maxcount_item', format: DbcFieldFormat.intType),
    FieldDefinition(index: 4, name: 'Type', description: 'Type', format: DbcFieldFormat.intType),
  ],
);
