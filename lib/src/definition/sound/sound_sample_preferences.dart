import 'package:warcrafty/src/definition/base/field_definition.dart';
import 'package:warcrafty/src/definition/base/structure_definition.dart';
import 'package:warcrafty/src/core/field_format.dart';

/// SoundSamplePreferences 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
const soundSamplePreferences = DbcStructureDefinition(
  name: 'SoundSamplePreferences',
  format: 'niiiiififfififffi',
  fields: [
    FieldDefinition(index: 0, name: 'ID', description: 'ID', format: DbcFieldFormat.indexField),
    FieldDefinition(index: 1, name: 'Field_0_6_0_3592_001', description: 'Field_0_6_0_3592_001', format: DbcFieldFormat.intType),
    FieldDefinition(index: 2, name: 'Field_0_6_0_3592_002', description: 'Field_0_6_0_3592_002', format: DbcFieldFormat.intType),
    FieldDefinition(index: 3, name: 'EAX2SampleRoom', description: 'EAX2SampleRoom', format: DbcFieldFormat.intType),
    FieldDefinition(index: 4, name: 'Field_0_6_0_3592_004', description: 'Field_0_6_0_3592_004', format: DbcFieldFormat.intType),
    FieldDefinition(index: 5, name: 'Field_0_6_0_3592_005', description: 'Field_0_6_0_3592_005', format: DbcFieldFormat.intType),
    FieldDefinition(index: 6, name: 'Field_0_6_0_3592_006', description: 'Field_0_6_0_3592_006', format: DbcFieldFormat.float),
    FieldDefinition(index: 7, name: 'Field_0_6_0_3592_007', description: 'Field_0_6_0_3592_007', format: DbcFieldFormat.intType),
    FieldDefinition(index: 8, name: 'EAX2SampleOcclusionLFRatio', description: 'EAX2SampleOcclusionLFRatio', format: DbcFieldFormat.float),
    FieldDefinition(index: 9, name: 'EAX2SampleOcclusionRoomRatio', description: 'EAX2SampleOcclusionRoomRatio', format: DbcFieldFormat.float),
    FieldDefinition(index: 10, name: 'Field_0_6_0_3592_010', description: 'Field_0_6_0_3592_010', format: DbcFieldFormat.intType),
    FieldDefinition(index: 11, name: 'EAX1EffectLevel', description: 'EAX1EffectLevel', format: DbcFieldFormat.float),
    FieldDefinition(index: 12, name: 'Field_0_6_0_3592_012', description: 'Field_0_6_0_3592_012', format: DbcFieldFormat.intType),
    FieldDefinition(index: 13, name: 'Field_0_6_0_3592_013', description: 'Field_0_6_0_3592_013', format: DbcFieldFormat.float),
    FieldDefinition(index: 14, name: 'EAX3SampleExclusion', description: 'EAX3SampleExclusion', format: DbcFieldFormat.float),
    FieldDefinition(index: 15, name: 'Field_0_6_0_3592_015', description: 'Field_0_6_0_3592_015', format: DbcFieldFormat.float),
    FieldDefinition(index: 16, name: 'Field_0_6_0_3592_016', description: 'Field_0_6_0_3592_016', format: DbcFieldFormat.intType),
  ],
);
