import 'package:warcrafty/src/core/field_definition.dart';
import 'package:warcrafty/src/core/structure_definition.dart';
import 'package:warcrafty/src/core/field_format.dart';

/// ObjectEffect 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
const objectEffect = DbcStructureDefinition(
  name: 'ObjectEffect',
  format: 'nsiiiiiifffi',
  fields: [
    FieldDefinition(index: 0, name: 'ID', description: 'ID', format: DbcFieldFormat.indexField),
    FieldDefinition(index: 1, name: 'Name', description: 'Name', format: DbcFieldFormat.string),
    FieldDefinition(index: 2, name: 'ObjectEffectGroupID', description: 'ObjectEffectGroupID', format: DbcFieldFormat.intType),
    FieldDefinition(index: 3, name: 'TriggerType', description: 'TriggerType', format: DbcFieldFormat.intType),
    FieldDefinition(index: 4, name: 'EventType', description: 'EventType', format: DbcFieldFormat.intType),
    FieldDefinition(index: 5, name: 'EffectRecType', description: 'EffectRecType', format: DbcFieldFormat.intType),
    FieldDefinition(index: 6, name: 'EffectRecID', description: 'EffectRecID', format: DbcFieldFormat.intType),
    FieldDefinition(index: 7, name: 'Attachment', description: 'Attachment', format: DbcFieldFormat.intType),
    FieldDefinition(index: 8, name: 'Offset0', description: 'Offset 0', format: DbcFieldFormat.float),
    FieldDefinition(index: 9, name: 'Offset1', description: 'Offset 1', format: DbcFieldFormat.float),
    FieldDefinition(index: 10, name: 'Offset2', description: 'Offset 2', format: DbcFieldFormat.float),
    FieldDefinition(index: 11, name: 'ObjectEffectModifierID', description: 'ObjectEffectModifierID', format: DbcFieldFormat.intType),
  ],
);
