import 'package:warcrafty/src/core/field_definition.dart';
import 'package:warcrafty/src/core/structure_definition.dart';
import 'package:warcrafty/src/core/field_format.dart';

/// ItemVisuals 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
const itemVisuals = DbcStructureDefinition(
  name: 'ItemVisuals',
  format: 'niiiii',
  fields: [
    FieldDefinition(index: 0, name: 'ID', description: 'ID', format: DbcFieldFormat.indexField),
    FieldDefinition(index: 1, name: 'Slot0', description: 'Slot 0', format: DbcFieldFormat.intType),
    FieldDefinition(index: 2, name: 'Slot1', description: 'Slot 1', format: DbcFieldFormat.intType),
    FieldDefinition(index: 3, name: 'Slot2', description: 'Slot 2', format: DbcFieldFormat.intType),
    FieldDefinition(index: 4, name: 'Slot3', description: 'Slot 3', format: DbcFieldFormat.intType),
    FieldDefinition(index: 5, name: 'Slot4', description: 'Slot 4', format: DbcFieldFormat.intType),
  ],
);
