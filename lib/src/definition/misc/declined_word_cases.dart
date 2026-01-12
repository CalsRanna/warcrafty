import 'package:warcrafty/src/definition/base/field_definition.dart';
import 'package:warcrafty/src/definition/base/structure_definition.dart';
import 'package:warcrafty/src/core/field_format.dart';

/// DeclinedWordCases 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
const declinedWordCases = DbcStructureDefinition(
  name: 'DeclinedWordCases',
  format: 'niis',
  fields: [
    FieldDefinition(index: 0, name: 'ID', description: 'ID', format: DbcFieldFormat.indexField),
    FieldDefinition(index: 1, name: 'DeclinedWordID', description: 'DeclinedWordID', format: DbcFieldFormat.intType),
    FieldDefinition(index: 2, name: 'CaseIndex', description: 'CaseIndex', format: DbcFieldFormat.intType),
    FieldDefinition(index: 3, name: 'DeclinedWord', description: 'DeclinedWord', format: DbcFieldFormat.string),
  ],
);
