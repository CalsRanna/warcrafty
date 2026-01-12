/// Movie.dbc - 电影格式
library;

import '../base/field_definition.dart';
import '../base/structure_definition.dart';
import '../../core/field_format.dart';

/// Movie 格式字符串
const String movieFormat = 'nxx';

/// Movie 结构定义
const DbcStructureDefinition movie = DbcStructureDefinition(
  name: 'Movie',
  format: movieFormat,
  fields: [
    FieldDefinition(index: 0, name: 'ID', description: '电影 ID', format: DbcFieldFormat.intType),
  ],
);
