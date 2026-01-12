import 'package:warcrafty/src/definition/base/field_definition.dart';
import 'package:warcrafty/src/definition/base/structure_definition.dart';
import 'package:warcrafty/src/core/field_format.dart';

/// Light 格式字符串

/// Light 结构定义
const light = DbcStructureDefinition(
  name: 'Light',
  format: 'nifffxxxxxxxxxx',
  fields: [
    FieldDefinition(index: 0, name: 'ID', description: 'ID', format: DbcFieldFormat.intType),
    FieldDefinition(index: 1, name: 'MapID', description: '地图 ID', format: DbcFieldFormat.intType),
    FieldDefinition(index: 2, name: 'X', description: 'X 坐标', format: DbcFieldFormat.float),
    FieldDefinition(index: 3, name: 'Y', description: 'Y 坐标', format: DbcFieldFormat.float),
    FieldDefinition(index: 4, name: 'Z', description: 'Z 坐标', format: DbcFieldFormat.float),
    FieldDefinition(index: 5, name: 'FalloffStart', description: '衰减开始', format: DbcFieldFormat.na),
    FieldDefinition(index: 6, name: 'FalloffEnd', description: '衰减结束', format: DbcFieldFormat.na),
  ],
);
