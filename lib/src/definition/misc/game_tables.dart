import 'package:warcrafty/src/core/field_definition.dart';
import 'package:warcrafty/src/core/structure_definition.dart';
import 'package:warcrafty/src/core/field_format.dart';

/// GameTables 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
const gameTables = DbcStructureDefinition(
  name: 'GameTables',
  format: 'sii',
  fields: [
    FieldDefinition(index: 0, name: 'Name', description: 'Name', format: DbcFieldFormat.string),
    FieldDefinition(index: 1, name: 'NumRows', description: 'NumRows', format: DbcFieldFormat.intType),
    FieldDefinition(index: 2, name: 'NumColumns', description: 'NumColumns', format: DbcFieldFormat.intType),
  ],
);
