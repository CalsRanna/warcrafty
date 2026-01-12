import 'package:warcrafty/src/core/field_definition.dart';
import 'package:warcrafty/src/core/structure_definition.dart';
import 'package:warcrafty/src/core/field_format.dart';

/// CameraShakes 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
const cameraShakes = DbcStructureDefinition(
  name: 'CameraShakes',
  format: 'niifffff',
  fields: [
    FieldDefinition(index: 0, name: 'ID', description: 'ID', format: DbcFieldFormat.indexField),
    FieldDefinition(index: 1, name: 'ShakeType', description: 'ShakeType', format: DbcFieldFormat.intType),
    FieldDefinition(index: 2, name: 'Direction', description: 'Direction', format: DbcFieldFormat.intType),
    FieldDefinition(index: 3, name: 'Amplitude', description: 'Amplitude', format: DbcFieldFormat.float),
    FieldDefinition(index: 4, name: 'Frequency', description: 'Frequency', format: DbcFieldFormat.float),
    FieldDefinition(index: 5, name: 'Duration', description: 'Duration', format: DbcFieldFormat.float),
    FieldDefinition(index: 6, name: 'Phase', description: 'Phase', format: DbcFieldFormat.float),
    FieldDefinition(index: 7, name: 'Coefficient', description: 'Coefficient', format: DbcFieldFormat.float),
  ],
);
