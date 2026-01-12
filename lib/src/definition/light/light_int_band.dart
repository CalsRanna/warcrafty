import 'package:warcrafty/src/definition/base/field_definition.dart';
import 'package:warcrafty/src/definition/base/structure_definition.dart';
import 'package:warcrafty/src/core/field_format.dart';

/// LightIntBand 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
const lightIntBand = DbcStructureDefinition(
  name: 'LightIntBand',
  format: 'niiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiii',
  fields: [
    FieldDefinition(index: 0, name: 'ID', description: 'ID', format: DbcFieldFormat.indexField),
    FieldDefinition(index: 1, name: 'Num', description: 'Num', format: DbcFieldFormat.intType),
    FieldDefinition(index: 2, name: 'Time0', description: 'Time 0', format: DbcFieldFormat.intType),
    FieldDefinition(index: 3, name: 'Time1', description: 'Time 1', format: DbcFieldFormat.intType),
    FieldDefinition(index: 4, name: 'Time2', description: 'Time 2', format: DbcFieldFormat.intType),
    FieldDefinition(index: 5, name: 'Time3', description: 'Time 3', format: DbcFieldFormat.intType),
    FieldDefinition(index: 6, name: 'Time4', description: 'Time 4', format: DbcFieldFormat.intType),
    FieldDefinition(index: 7, name: 'Time5', description: 'Time 5', format: DbcFieldFormat.intType),
    FieldDefinition(index: 8, name: 'Time6', description: 'Time 6', format: DbcFieldFormat.intType),
    FieldDefinition(index: 9, name: 'Time7', description: 'Time 7', format: DbcFieldFormat.intType),
    FieldDefinition(index: 10, name: 'Time8', description: 'Time 8', format: DbcFieldFormat.intType),
    FieldDefinition(index: 11, name: 'Time9', description: 'Time 9', format: DbcFieldFormat.intType),
    FieldDefinition(index: 12, name: 'Time10', description: 'Time 10', format: DbcFieldFormat.intType),
    FieldDefinition(index: 13, name: 'Time11', description: 'Time 11', format: DbcFieldFormat.intType),
    FieldDefinition(index: 14, name: 'Time12', description: 'Time 12', format: DbcFieldFormat.intType),
    FieldDefinition(index: 15, name: 'Time13', description: 'Time 13', format: DbcFieldFormat.intType),
    FieldDefinition(index: 16, name: 'Time14', description: 'Time 14', format: DbcFieldFormat.intType),
    FieldDefinition(index: 17, name: 'Time15', description: 'Time 15', format: DbcFieldFormat.intType),
    FieldDefinition(index: 18, name: 'Data0', description: 'Data 0', format: DbcFieldFormat.intType),
    FieldDefinition(index: 19, name: 'Data1', description: 'Data 1', format: DbcFieldFormat.intType),
    FieldDefinition(index: 20, name: 'Data2', description: 'Data 2', format: DbcFieldFormat.intType),
    FieldDefinition(index: 21, name: 'Data3', description: 'Data 3', format: DbcFieldFormat.intType),
    FieldDefinition(index: 22, name: 'Data4', description: 'Data 4', format: DbcFieldFormat.intType),
    FieldDefinition(index: 23, name: 'Data5', description: 'Data 5', format: DbcFieldFormat.intType),
    FieldDefinition(index: 24, name: 'Data6', description: 'Data 6', format: DbcFieldFormat.intType),
    FieldDefinition(index: 25, name: 'Data7', description: 'Data 7', format: DbcFieldFormat.intType),
    FieldDefinition(index: 26, name: 'Data8', description: 'Data 8', format: DbcFieldFormat.intType),
    FieldDefinition(index: 27, name: 'Data9', description: 'Data 9', format: DbcFieldFormat.intType),
    FieldDefinition(index: 28, name: 'Data10', description: 'Data 10', format: DbcFieldFormat.intType),
    FieldDefinition(index: 29, name: 'Data11', description: 'Data 11', format: DbcFieldFormat.intType),
    FieldDefinition(index: 30, name: 'Data12', description: 'Data 12', format: DbcFieldFormat.intType),
    FieldDefinition(index: 31, name: 'Data13', description: 'Data 13', format: DbcFieldFormat.intType),
    FieldDefinition(index: 32, name: 'Data14', description: 'Data 14', format: DbcFieldFormat.intType),
    FieldDefinition(index: 33, name: 'Data15', description: 'Data 15', format: DbcFieldFormat.intType),
  ],
);
