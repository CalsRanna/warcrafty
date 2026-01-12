import 'package:warcrafty/src/core/field_definition.dart';
import 'package:warcrafty/src/core/structure_definition.dart';
import 'package:warcrafty/src/core/field_format.dart';

/// UnitBloodLevels 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
const unitBloodLevels = DbcStructureDefinition(
  name: 'UnitBloodLevels',
  format: 'niii',
  fields: [
    FieldDefinition(index: 0, name: 'ID', description: 'ID', format: DbcFieldFormat.indexField),
    FieldDefinition(index: 1, name: 'Violencelevel0', description: 'Violencelevel 0', format: DbcFieldFormat.intType),
    FieldDefinition(index: 2, name: 'Violencelevel1', description: 'Violencelevel 1', format: DbcFieldFormat.intType),
    FieldDefinition(index: 3, name: 'Violencelevel2', description: 'Violencelevel 2', format: DbcFieldFormat.intType),
  ],
);
