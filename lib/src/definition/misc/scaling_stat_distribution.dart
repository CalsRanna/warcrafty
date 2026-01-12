import 'package:warcrafty/src/schema/field.dart';
import 'package:warcrafty/src/schema/schema.dart';

/// ScalingStatDistribution 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
const scalingStatDistribution = DbcSchema(
  name: 'ScalingStatDistribution',
  format: 'niiiiiiiiiiiiiiiiiiiii',
  fields: [
    Field(index: 0, name: 'ID', description: 'ID', type: FieldType.id),
    Field(index: 1, name: 'StatID0', description: 'StatID 0', type: FieldType.int32),
    Field(index: 2, name: 'StatID1', description: 'StatID 1', type: FieldType.int32),
    Field(index: 3, name: 'StatID2', description: 'StatID 2', type: FieldType.int32),
    Field(index: 4, name: 'StatID3', description: 'StatID 3', type: FieldType.int32),
    Field(index: 5, name: 'StatID4', description: 'StatID 4', type: FieldType.int32),
    Field(index: 6, name: 'StatID5', description: 'StatID 5', type: FieldType.int32),
    Field(index: 7, name: 'StatID6', description: 'StatID 6', type: FieldType.int32),
    Field(index: 8, name: 'StatID7', description: 'StatID 7', type: FieldType.int32),
    Field(index: 9, name: 'StatID8', description: 'StatID 8', type: FieldType.int32),
    Field(index: 10, name: 'StatID9', description: 'StatID 9', type: FieldType.int32),
    Field(index: 11, name: 'Bonus0', description: 'Bonus 0', type: FieldType.int32),
    Field(index: 12, name: 'Bonus1', description: 'Bonus 1', type: FieldType.int32),
    Field(index: 13, name: 'Bonus2', description: 'Bonus 2', type: FieldType.int32),
    Field(index: 14, name: 'Bonus3', description: 'Bonus 3', type: FieldType.int32),
    Field(index: 15, name: 'Bonus4', description: 'Bonus 4', type: FieldType.int32),
    Field(index: 16, name: 'Bonus5', description: 'Bonus 5', type: FieldType.int32),
    Field(index: 17, name: 'Bonus6', description: 'Bonus 6', type: FieldType.int32),
    Field(index: 18, name: 'Bonus7', description: 'Bonus 7', type: FieldType.int32),
    Field(index: 19, name: 'Bonus8', description: 'Bonus 8', type: FieldType.int32),
    Field(index: 20, name: 'Bonus9', description: 'Bonus 9', type: FieldType.int32),
    Field(index: 21, name: 'Maxlevel', description: 'Maxlevel', type: FieldType.int32),
  ],
);
