import 'package:warcrafty/src/internal/field.dart';
import 'package:warcrafty/src/internal/schema.dart';

/// GroundEffectTexture 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
const groundEffectTexture = DbcSchema(
  name: 'GroundEffectTexture',
  format: 'niiiiiiiiii',
  fields: [
    Field(index: 0, name: 'ID', description: 'ID', type: FieldType.id),
    Field(index: 1, name: 'DoodadID0', description: 'DoodadID 0', type: FieldType.int32),
    Field(index: 2, name: 'DoodadID1', description: 'DoodadID 1', type: FieldType.int32),
    Field(index: 3, name: 'DoodadID2', description: 'DoodadID 2', type: FieldType.int32),
    Field(index: 4, name: 'DoodadID3', description: 'DoodadID 3', type: FieldType.int32),
    Field(index: 5, name: 'DoodadWeight0', description: 'DoodadWeight 0', type: FieldType.int32),
    Field(index: 6, name: 'DoodadWeight1', description: 'DoodadWeight 1', type: FieldType.int32),
    Field(index: 7, name: 'DoodadWeight2', description: 'DoodadWeight 2', type: FieldType.int32),
    Field(index: 8, name: 'DoodadWeight3', description: 'DoodadWeight 3', type: FieldType.int32),
    Field(index: 9, name: 'Density', description: 'Density', type: FieldType.int32),
    Field(index: 10, name: 'Sound', description: 'Sound', type: FieldType.int32),
  ],
);
