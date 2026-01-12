import 'package:warcrafty/src/schema/field.dart';
import 'package:warcrafty/src/schema/schema.dart';

/// SoundProviderPreferences 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
const soundProviderPreferences = DbcSchema(
  name: 'SoundProviderPreferences',
  format: 'nsiifffiifififffifffffff',
  fields: [
    Field(index: 0, name: 'ID', description: 'ID', type: FieldType.id),
    Field(index: 1, name: 'Description', description: 'Description', type: FieldType.string),
    Field(index: 2, name: 'Flags', description: 'Flags', type: FieldType.int32),
    Field(index: 3, name: 'EAXEnvironmentSelection', description: 'EAXEnvironmentSelection', type: FieldType.int32),
    Field(index: 4, name: 'EAXDecayTime', description: 'EAXDecayTime', type: FieldType.float),
    Field(index: 5, name: 'EAX2EnvironmentSize', description: 'EAX2EnvironmentSize', type: FieldType.float),
    Field(index: 6, name: 'EAX2EnvironmentDiffusion', description: 'EAX2EnvironmentDiffusion', type: FieldType.float),
    Field(index: 7, name: 'EAX2Room', description: 'EAX2Room', type: FieldType.int32),
    Field(index: 8, name: 'EAX2RoomHF', description: 'EAX2RoomHF', type: FieldType.int32),
    Field(index: 9, name: 'EAX2DecayHFRatio', description: 'EAX2DecayHFRatio', type: FieldType.float),
    Field(index: 10, name: 'EAX2Reflections', description: 'EAX2Reflections', type: FieldType.int32),
    Field(index: 11, name: 'EAX2ReflectionsDelay', description: 'EAX2ReflectionsDelay', type: FieldType.float),
    Field(index: 12, name: 'EAX2Reverb', description: 'EAX2Reverb', type: FieldType.int32),
    Field(index: 13, name: 'EAX2ReverbDelay', description: 'EAX2ReverbDelay', type: FieldType.float),
    Field(index: 14, name: 'EAX2RoomRolloff', description: 'EAX2RoomRolloff', type: FieldType.float),
    Field(index: 15, name: 'EAX2AirAbsorption', description: 'EAX2AirAbsorption', type: FieldType.float),
    Field(index: 16, name: 'EAX3RoomLF', description: 'EAX3RoomLF', type: FieldType.int32),
    Field(index: 17, name: 'EAX3DecayLFRatio', description: 'EAX3DecayLFRatio', type: FieldType.float),
    Field(index: 18, name: 'EAX3EchoTime', description: 'EAX3EchoTime', type: FieldType.float),
    Field(index: 19, name: 'EAX3EchoDepth', description: 'EAX3EchoDepth', type: FieldType.float),
    Field(index: 20, name: 'EAX3ModulationTime', description: 'EAX3ModulationTime', type: FieldType.float),
    Field(index: 21, name: 'EAX3ModulationDepth', description: 'EAX3ModulationDepth', type: FieldType.float),
    Field(index: 22, name: 'EAX3HFReference', description: 'EAX3HFReference', type: FieldType.float),
    Field(index: 23, name: 'EAX3LFReference', description: 'EAX3LFReference', type: FieldType.float),
  ],
);
