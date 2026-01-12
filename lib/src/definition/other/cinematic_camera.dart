/// CinematicCamera.dbc - 电影相机格式
library;

import '../base/field_definition.dart';
import '../base/structure_definition.dart';
import '../../core/field_format.dart';

/// CinematicCamera 格式字符串
const String cinematicCameraFormat = 'nsiffff';

/// CinematicCamera 结构定义
const DbcStructureDefinition cinematicCamera = DbcStructureDefinition(
  name: 'CinematicCamera',
  format: cinematicCameraFormat,
  fields: [
    FieldDefinition(index: 0, name: 'ID', description: '相机 ID', format: DbcFieldFormat.intType),
    FieldDefinition(index: 1, name: 'Model', description: '模型', format: DbcFieldFormat.string),
    FieldDefinition(index: 2, name: 'Sound', description: '声音', format: DbcFieldFormat.intType),
    FieldDefinition(index: 3, name: 'OriginX', description: '原点 X', format: DbcFieldFormat.float),
    FieldDefinition(index: 4, name: 'OriginY', description: '原点 Y', format: DbcFieldFormat.float),
    FieldDefinition(index: 5, name: 'OriginZ', description: '原点 Z', format: DbcFieldFormat.float),
    FieldDefinition(index: 6, name: 'OriginFacing', description: '原点朝向', format: DbcFieldFormat.float),
  ],
);
