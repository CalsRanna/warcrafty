import 'package:warcrafty/src/schema/field.dart';
import 'package:warcrafty/src/schema/schema.dart';

/// CameraShakes 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
const cameraShakes = DbcSchema(
  name: 'CameraShakes',
  format: 'niifffff',
  fields: [
    Field(index: 0, name: 'ID', description: 'ID', type: FieldType.id),
    Field(index: 1, name: 'ShakeType', description: 'ShakeType', type: FieldType.int32),
    Field(index: 2, name: 'Direction', description: 'Direction', type: FieldType.int32),
    Field(index: 3, name: 'Amplitude', description: 'Amplitude', type: FieldType.float),
    Field(index: 4, name: 'Frequency', description: 'Frequency', type: FieldType.float),
    Field(index: 5, name: 'Duration', description: 'Duration', type: FieldType.float),
    Field(index: 6, name: 'Phase', description: 'Phase', type: FieldType.float),
    Field(index: 7, name: 'Coefficient', description: 'Coefficient', type: FieldType.float),
  ],
);
