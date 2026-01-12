import 'package:warcrafty/src/definition/base/field_definition.dart';
import 'package:warcrafty/src/definition/base/structure_definition.dart';
import 'package:warcrafty/src/core/field_format.dart';

/// CinematicCamera 格式字符串

/// CinematicCamera 结构定义
const cinematicCamera = DbcStructureDefinition(
  name: 'CinematicCamera',
  format: 'nsiffff',
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
