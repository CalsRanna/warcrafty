import 'package:warcrafty/src/core/field_definition.dart';
import 'package:warcrafty/src/core/structure_definition.dart';
import 'package:warcrafty/src/core/field_format.dart';

/// SpellDuration 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
const spellDuration = DbcStructureDefinition(
  name: 'SpellDuration',
  format: 'niii',
  fields: [
    FieldDefinition(index: 0, name: 'ID', description: 'ID', format: DbcFieldFormat.indexField),
    FieldDefinition(index: 1, name: 'Duration', description: 'Duration', format: DbcFieldFormat.intType),
    FieldDefinition(index: 2, name: 'DurationPerLevel', description: 'DurationPerLevel', format: DbcFieldFormat.intType),
    FieldDefinition(index: 3, name: 'MaxDuration', description: 'MaxDuration', format: DbcFieldFormat.intType),
  ],
);
