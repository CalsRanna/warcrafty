import 'package:warcrafty/src/definition/base/field_definition.dart';
import 'package:warcrafty/src/definition/base/structure_definition.dart';
import 'package:warcrafty/src/core/field_format.dart';

/// AttackAnimKits 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
const attackAnimKits = DbcStructureDefinition(
  name: 'AttackAnimKits',
  format: 'niiii',
  fields: [
    FieldDefinition(index: 0, name: 'ID', description: 'ID', format: DbcFieldFormat.indexField),
    FieldDefinition(index: 1, name: 'ItemSubclassID', description: 'ItemSubclassID', format: DbcFieldFormat.intType),
    FieldDefinition(index: 2, name: 'AnimTypeID', description: 'AnimTypeID', format: DbcFieldFormat.intType),
    FieldDefinition(index: 3, name: 'AnimFrequency', description: 'AnimFrequency', format: DbcFieldFormat.intType),
    FieldDefinition(index: 4, name: 'WhichHand', description: 'WhichHand', format: DbcFieldFormat.intType),
  ],
);
