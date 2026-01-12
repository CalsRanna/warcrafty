import 'package:warcrafty/src/core/field_definition.dart';
import 'package:warcrafty/src/core/structure_definition.dart';
import 'package:warcrafty/src/core/field_format.dart';

/// SoundProviderPreferences 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
const soundProviderPreferences = DbcStructureDefinition(
  name: 'SoundProviderPreferences',
  format: 'nsiifffiifififffifffffff',
  fields: [
    FieldDefinition(index: 0, name: 'ID', description: 'ID', format: DbcFieldFormat.indexField),
    FieldDefinition(index: 1, name: 'Description', description: 'Description', format: DbcFieldFormat.string),
    FieldDefinition(index: 2, name: 'Flags', description: 'Flags', format: DbcFieldFormat.intType),
    FieldDefinition(index: 3, name: 'EAXEnvironmentSelection', description: 'EAXEnvironmentSelection', format: DbcFieldFormat.intType),
    FieldDefinition(index: 4, name: 'EAXDecayTime', description: 'EAXDecayTime', format: DbcFieldFormat.float),
    FieldDefinition(index: 5, name: 'EAX2EnvironmentSize', description: 'EAX2EnvironmentSize', format: DbcFieldFormat.float),
    FieldDefinition(index: 6, name: 'EAX2EnvironmentDiffusion', description: 'EAX2EnvironmentDiffusion', format: DbcFieldFormat.float),
    FieldDefinition(index: 7, name: 'EAX2Room', description: 'EAX2Room', format: DbcFieldFormat.intType),
    FieldDefinition(index: 8, name: 'EAX2RoomHF', description: 'EAX2RoomHF', format: DbcFieldFormat.intType),
    FieldDefinition(index: 9, name: 'EAX2DecayHFRatio', description: 'EAX2DecayHFRatio', format: DbcFieldFormat.float),
    FieldDefinition(index: 10, name: 'EAX2Reflections', description: 'EAX2Reflections', format: DbcFieldFormat.intType),
    FieldDefinition(index: 11, name: 'EAX2ReflectionsDelay', description: 'EAX2ReflectionsDelay', format: DbcFieldFormat.float),
    FieldDefinition(index: 12, name: 'EAX2Reverb', description: 'EAX2Reverb', format: DbcFieldFormat.intType),
    FieldDefinition(index: 13, name: 'EAX2ReverbDelay', description: 'EAX2ReverbDelay', format: DbcFieldFormat.float),
    FieldDefinition(index: 14, name: 'EAX2RoomRolloff', description: 'EAX2RoomRolloff', format: DbcFieldFormat.float),
    FieldDefinition(index: 15, name: 'EAX2AirAbsorption', description: 'EAX2AirAbsorption', format: DbcFieldFormat.float),
    FieldDefinition(index: 16, name: 'EAX3RoomLF', description: 'EAX3RoomLF', format: DbcFieldFormat.intType),
    FieldDefinition(index: 17, name: 'EAX3DecayLFRatio', description: 'EAX3DecayLFRatio', format: DbcFieldFormat.float),
    FieldDefinition(index: 18, name: 'EAX3EchoTime', description: 'EAX3EchoTime', format: DbcFieldFormat.float),
    FieldDefinition(index: 19, name: 'EAX3EchoDepth', description: 'EAX3EchoDepth', format: DbcFieldFormat.float),
    FieldDefinition(index: 20, name: 'EAX3ModulationTime', description: 'EAX3ModulationTime', format: DbcFieldFormat.float),
    FieldDefinition(index: 21, name: 'EAX3ModulationDepth', description: 'EAX3ModulationDepth', format: DbcFieldFormat.float),
    FieldDefinition(index: 22, name: 'EAX3HFReference', description: 'EAX3HFReference', format: DbcFieldFormat.float),
    FieldDefinition(index: 23, name: 'EAX3LFReference', description: 'EAX3LFReference', format: DbcFieldFormat.float),
  ],
);
