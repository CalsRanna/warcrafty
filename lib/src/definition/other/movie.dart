import 'package:warcrafty/src/definition/base/field_definition.dart';
import 'package:warcrafty/src/definition/base/structure_definition.dart';
import 'package:warcrafty/src/core/field_format.dart';

/// Movie 格式字符串

/// Movie 结构定义
const movie = DbcStructureDefinition(
  name: 'Movie',
  format: 'nxx',
  fields: [
    FieldDefinition(index: 0, name: 'ID', description: '电影 ID', format: DbcFieldFormat.intType),
  ],
);
