import 'package:warcrafty/src/core/field_definition.dart';
import 'package:warcrafty/src/core/structure_definition.dart';
import 'package:warcrafty/src/core/field_format.dart';

/// DestructibleModelData 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
const destructibleModelData = DbcStructureDefinition(
  name: 'DestructibleModelData',
  format: 'niiiiiiiiiiiiiiiiii',
  fields: [
    FieldDefinition(index: 0, name: 'ID', description: 'ID', format: DbcFieldFormat.indexField),
    FieldDefinition(index: 1, name: 'State0ImpactEffectDoodadSet', description: 'State0ImpactEffectDoodadSet', format: DbcFieldFormat.intType),
    FieldDefinition(index: 2, name: 'State0AmbientDoodadSet', description: 'State0AmbientDoodadSet', format: DbcFieldFormat.intType),
    FieldDefinition(index: 3, name: 'State1WMO', description: 'State1WMO', format: DbcFieldFormat.intType),
    FieldDefinition(index: 4, name: 'State1DestructionDoodadSet', description: 'State1DestructionDoodadSet', format: DbcFieldFormat.intType),
    FieldDefinition(index: 5, name: 'State1ImpactEffectDoodadSet', description: 'State1ImpactEffectDoodadSet', format: DbcFieldFormat.intType),
    FieldDefinition(index: 6, name: 'State1AmbientDoodadSet', description: 'State1AmbientDoodadSet', format: DbcFieldFormat.intType),
    FieldDefinition(index: 7, name: 'State2WMO', description: 'State2WMO', format: DbcFieldFormat.intType),
    FieldDefinition(index: 8, name: 'State2DestructionDoodadSet', description: 'State2DestructionDoodadSet', format: DbcFieldFormat.intType),
    FieldDefinition(index: 9, name: 'State2ImpactEffectDoodadSet', description: 'State2ImpactEffectDoodadSet', format: DbcFieldFormat.intType),
    FieldDefinition(index: 10, name: 'State2AmbientDoodadSet', description: 'State2AmbientDoodadSet', format: DbcFieldFormat.intType),
    FieldDefinition(index: 11, name: 'State3WMO', description: 'State3WMO', format: DbcFieldFormat.intType),
    FieldDefinition(index: 12, name: 'State3InitDoodadSet', description: 'State3InitDoodadSet', format: DbcFieldFormat.intType),
    FieldDefinition(index: 13, name: 'State3AmbientDoodadSet', description: 'State3AmbientDoodadSet', format: DbcFieldFormat.intType),
    FieldDefinition(index: 14, name: 'EjectDirection', description: 'EjectDirection', format: DbcFieldFormat.intType),
    FieldDefinition(index: 15, name: 'RepairGroundFx', description: 'RepairGroundFx', format: DbcFieldFormat.intType),
    FieldDefinition(index: 16, name: 'DoNotHighlight', description: 'DoNotHighlight', format: DbcFieldFormat.intType),
    FieldDefinition(index: 17, name: 'HealEffect', description: 'HealEffect', format: DbcFieldFormat.intType),
    FieldDefinition(index: 18, name: 'HealEffectSpeed', description: 'HealEffectSpeed', format: DbcFieldFormat.intType),
  ],
);
