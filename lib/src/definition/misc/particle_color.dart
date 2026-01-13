import 'package:warcrafty/src/internal/field.dart';
import 'package:warcrafty/src/internal/schema.dart';

/// ParticleColor 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
const particleColor = DbcSchema(
  name: 'ParticleColor',
  format: 'niiiiiiiii',
  fields: [
    Field(index: 0, name: 'ID', description: 'ID', type: FieldType.id),
    Field(index: 1, name: 'Start0', description: 'Start 0', type: FieldType.int32),
    Field(index: 2, name: 'Start1', description: 'Start 1', type: FieldType.int32),
    Field(index: 3, name: 'Start2', description: 'Start 2', type: FieldType.int32),
    Field(index: 4, name: 'MID0', description: 'MID 0', type: FieldType.int32),
    Field(index: 5, name: 'MID1', description: 'MID 1', type: FieldType.int32),
    Field(index: 6, name: 'MID2', description: 'MID 2', type: FieldType.int32),
    Field(index: 7, name: 'End0', description: 'End 0', type: FieldType.int32),
    Field(index: 8, name: 'End1', description: 'End 1', type: FieldType.int32),
    Field(index: 9, name: 'End2', description: 'End 2', type: FieldType.int32),
  ],
);
