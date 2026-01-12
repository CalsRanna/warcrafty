import 'package:warcrafty/src/schema/field.dart';
import 'package:warcrafty/src/schema/schema.dart';

/// SoundSamplePreferences 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
const soundSamplePreferences = DbcSchema(
  name: 'SoundSamplePreferences',
  format: 'niiiiififfififffi',
  fields: [
    Field(index: 0, name: 'ID', description: 'ID', type: FieldType.id),
    Field(index: 1, name: 'Field_0_6_0_3592_001', description: 'Field_0_6_0_3592_001', type: FieldType.int32),
    Field(index: 2, name: 'Field_0_6_0_3592_002', description: 'Field_0_6_0_3592_002', type: FieldType.int32),
    Field(index: 3, name: 'EAX2SampleRoom', description: 'EAX2SampleRoom', type: FieldType.int32),
    Field(index: 4, name: 'Field_0_6_0_3592_004', description: 'Field_0_6_0_3592_004', type: FieldType.int32),
    Field(index: 5, name: 'Field_0_6_0_3592_005', description: 'Field_0_6_0_3592_005', type: FieldType.int32),
    Field(index: 6, name: 'Field_0_6_0_3592_006', description: 'Field_0_6_0_3592_006', type: FieldType.float),
    Field(index: 7, name: 'Field_0_6_0_3592_007', description: 'Field_0_6_0_3592_007', type: FieldType.int32),
    Field(index: 8, name: 'EAX2SampleOcclusionLFRatio', description: 'EAX2SampleOcclusionLFRatio', type: FieldType.float),
    Field(index: 9, name: 'EAX2SampleOcclusionRoomRatio', description: 'EAX2SampleOcclusionRoomRatio', type: FieldType.float),
    Field(index: 10, name: 'Field_0_6_0_3592_010', description: 'Field_0_6_0_3592_010', type: FieldType.int32),
    Field(index: 11, name: 'EAX1EffectLevel', description: 'EAX1EffectLevel', type: FieldType.float),
    Field(index: 12, name: 'Field_0_6_0_3592_012', description: 'Field_0_6_0_3592_012', type: FieldType.int32),
    Field(index: 13, name: 'Field_0_6_0_3592_013', description: 'Field_0_6_0_3592_013', type: FieldType.float),
    Field(index: 14, name: 'EAX3SampleExclusion', description: 'EAX3SampleExclusion', type: FieldType.float),
    Field(index: 15, name: 'Field_0_6_0_3592_015', description: 'Field_0_6_0_3592_015', type: FieldType.float),
    Field(index: 16, name: 'Field_0_6_0_3592_016', description: 'Field_0_6_0_3592_016', type: FieldType.int32),
  ],
);
