import 'package:warcrafty/src/internal/field.dart';
import 'package:warcrafty/src/internal/schema.dart';

/// MovieVariation 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
const movieVariation = DbcSchema(
  name: 'MovieVariation',
  format: 'nii',
  fields: [
    Field(index: 0, name: 'ID', description: 'ID', type: FieldType.id),
    Field(index: 1, name: 'MovieID', description: 'MovieID', type: FieldType.int32),
    Field(index: 2, name: 'FileDataID', description: 'FileDataID', type: FieldType.int32),
  ],
);
