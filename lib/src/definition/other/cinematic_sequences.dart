/// CinematicSequences.dbc - 电影序列格式
library;

import '../base/field_definition.dart';
import '../base/structure_definition.dart';
import '../../core/field_format.dart';

/// CinematicSequences 格式字符串
const String cinematicSequencesFormat = 'nxixxxxxxx';

/// CinematicSequences 结构定义
const DbcStructureDefinition cinematicSequences = DbcStructureDefinition(
  name: 'CinematicSequences',
  format: cinematicSequencesFormat,
  fields: [
    FieldDefinition(index: 0, name: 'ID', description: '序列 ID', format: DbcFieldFormat.intType),
    FieldDefinition(index: 1, name: 'Unknown1', description: '未知1', format: DbcFieldFormat.na),
    FieldDefinition(index: 2, name: 'Camera1', description: '相机 1', format: DbcFieldFormat.intType),
    FieldDefinition(index: 3, name: 'Camera2', description: '相机 2', format: DbcFieldFormat.na),
    FieldDefinition(index: 4, name: 'Camera3', description: '相机 3', format: DbcFieldFormat.na),
    FieldDefinition(index: 5, name: 'Camera4', description: '相机 4', format: DbcFieldFormat.na),
    FieldDefinition(index: 6, name: 'Camera5', description: '相机 5', format: DbcFieldFormat.na),
    FieldDefinition(index: 7, name: 'Camera6', description: '相机 6', format: DbcFieldFormat.na),
    FieldDefinition(index: 8, name: 'Camera7', description: '相机 7', format: DbcFieldFormat.na),
    FieldDefinition(index: 9, name: 'Camera8', description: '相机 8', format: DbcFieldFormat.na),
  ],
);
