import 'package:warcrafty/src/internal/field.dart';
import 'package:warcrafty/src/internal/schema.dart';

/// DestructibleModelData 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
const destructibleModelData = DbcSchema(
  name: 'DestructibleModelData',
  format: 'niiiiiiiiiiiiiiiiii',
  fields: [
    Field(index: 0, name: 'ID', description: 'ID', type: FieldType.id),
    Field(index: 1, name: 'State0ImpactEffectDoodadSet', description: 'State0ImpactEffectDoodadSet', type: FieldType.int32),
    Field(index: 2, name: 'State0AmbientDoodadSet', description: 'State0AmbientDoodadSet', type: FieldType.int32),
    Field(index: 3, name: 'State1WMO', description: 'State1WMO', type: FieldType.int32),
    Field(index: 4, name: 'State1DestructionDoodadSet', description: 'State1DestructionDoodadSet', type: FieldType.int32),
    Field(index: 5, name: 'State1ImpactEffectDoodadSet', description: 'State1ImpactEffectDoodadSet', type: FieldType.int32),
    Field(index: 6, name: 'State1AmbientDoodadSet', description: 'State1AmbientDoodadSet', type: FieldType.int32),
    Field(index: 7, name: 'State2WMO', description: 'State2WMO', type: FieldType.int32),
    Field(index: 8, name: 'State2DestructionDoodadSet', description: 'State2DestructionDoodadSet', type: FieldType.int32),
    Field(index: 9, name: 'State2ImpactEffectDoodadSet', description: 'State2ImpactEffectDoodadSet', type: FieldType.int32),
    Field(index: 10, name: 'State2AmbientDoodadSet', description: 'State2AmbientDoodadSet', type: FieldType.int32),
    Field(index: 11, name: 'State3WMO', description: 'State3WMO', type: FieldType.int32),
    Field(index: 12, name: 'State3InitDoodadSet', description: 'State3InitDoodadSet', type: FieldType.int32),
    Field(index: 13, name: 'State3AmbientDoodadSet', description: 'State3AmbientDoodadSet', type: FieldType.int32),
    Field(index: 14, name: 'EjectDirection', description: 'EjectDirection', type: FieldType.int32),
    Field(index: 15, name: 'RepairGroundFx', description: 'RepairGroundFx', type: FieldType.int32),
    Field(index: 16, name: 'DoNotHighlight', description: 'DoNotHighlight', type: FieldType.int32),
    Field(index: 17, name: 'HealEffect', description: 'HealEffect', type: FieldType.int32),
    Field(index: 18, name: 'HealEffectSpeed', description: 'HealEffectSpeed', type: FieldType.int32),
  ],
);
