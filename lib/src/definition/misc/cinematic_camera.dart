import 'package:warcrafty/src/schema/field.dart';
import 'package:warcrafty/src/schema/schema.dart';

/// CinematicCamera 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
const cinematicCamera = DbcSchema(
  name: 'CinematicCamera',
  format: 'nsiffff',
  fields: [
    Field(index: 0, name: 'ID', description: 'ID', type: FieldType.id),
    Field(index: 1, name: 'Model', description: 'Model', type: FieldType.string),
    Field(index: 2, name: 'SoundID', description: 'SoundID', type: FieldType.int32),
    Field(index: 3, name: 'Origin0', description: 'Origin 0', type: FieldType.float),
    Field(index: 4, name: 'Origin1', description: 'Origin 1', type: FieldType.float),
    Field(index: 5, name: 'Origin2', description: 'Origin 2', type: FieldType.float),
    Field(index: 6, name: 'OriginFacing', description: 'OriginFacing', type: FieldType.float),
  ],
);
