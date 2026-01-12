/// Holidays.dbc - 假日格式
library;

import '../base/field_definition.dart';
import '../base/structure_definition.dart';
import '../../core/field_format.dart';

/// Holidays 格式字符串
const String holidaysFormat = 'niiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiixxsiix';

/// Holidays 结构定义
const DbcStructureDefinition holidays = DbcStructureDefinition(
  name: 'Holidays',
  format: holidaysFormat,
  fields: [
    FieldDefinition(index: 0, name: 'ID', description: '假日 ID', format: DbcFieldFormat.intType),
    FieldDefinition(index: 1, name: 'HolidayNameID', description: '假日名称 ID', format: DbcFieldFormat.intType),
    FieldDefinition(index: 2, name: 'HolidayDescriptionID', description: '假日描述 ID', format: DbcFieldFormat.intType),
    FieldDefinition(index: 3, name: 'Priority', description: '优先级', format: DbcFieldFormat.intType),
    FieldDefinition(index: 4, name: 'FilterType', description: '过滤类型', format: DbcFieldFormat.intType),
    FieldDefinition(index: 5, name: 'Duration1', description: '持续时间 1', format: DbcFieldFormat.intType),
    FieldDefinition(index: 6, name: 'Duration2', description: '持续时间 2', format: DbcFieldFormat.intType),
    FieldDefinition(index: 7, name: 'Duration3', description: '持续时间 3', format: DbcFieldFormat.intType),
    FieldDefinition(index: 8, name: 'Duration4', description: '持续时间 4', format: DbcFieldFormat.intType),
    FieldDefinition(index: 9, name: 'Duration5', description: '持续时间 5', format: DbcFieldFormat.intType),
    FieldDefinition(index: 10, name: 'Duration6', description: '持续时间 6', format: DbcFieldFormat.intType),
    FieldDefinition(index: 11, name: 'Duration7', description: '持续时间 7', format: DbcFieldFormat.intType),
    FieldDefinition(index: 12, name: 'Duration8', description: '持续时间 8', format: DbcFieldFormat.intType),
    FieldDefinition(index: 13, name: 'Duration9', description: '持续时间 9', format: DbcFieldFormat.intType),
    FieldDefinition(index: 14, name: 'Duration10', description: '持续时间 10', format: DbcFieldFormat.intType),
    FieldDefinition(index: 15, name: 'Date1', description: '日期 1', format: DbcFieldFormat.intType),
    FieldDefinition(index: 16, name: 'Date2', description: '日期 2', format: DbcFieldFormat.intType),
    FieldDefinition(index: 17, name: 'Date3', description: '日期 3', format: DbcFieldFormat.intType),
    FieldDefinition(index: 18, name: 'Date4', description: '日期 4', format: DbcFieldFormat.intType),
    FieldDefinition(index: 19, name: 'Date5', description: '日期 5', format: DbcFieldFormat.intType),
    FieldDefinition(index: 20, name: 'Date6', description: '日期 6', format: DbcFieldFormat.intType),
    FieldDefinition(index: 21, name: 'Date7', description: '日期 7', format: DbcFieldFormat.intType),
    FieldDefinition(index: 22, name: 'Date8', description: '日期 8', format: DbcFieldFormat.intType),
    FieldDefinition(index: 23, name: 'Date9', description: '日期 9', format: DbcFieldFormat.intType),
    FieldDefinition(index: 24, name: 'Date10', description: '日期 10', format: DbcFieldFormat.intType),
    FieldDefinition(index: 25, name: 'Date11', description: '日期 11', format: DbcFieldFormat.intType),
    FieldDefinition(index: 26, name: 'Date12', description: '日期 12', format: DbcFieldFormat.intType),
    FieldDefinition(index: 27, name: 'Date13', description: '日期 13', format: DbcFieldFormat.intType),
    FieldDefinition(index: 28, name: 'Date14', description: '日期 14', format: DbcFieldFormat.intType),
    FieldDefinition(index: 29, name: 'Date15', description: '日期 15', format: DbcFieldFormat.intType),
    FieldDefinition(index: 30, name: 'Date16', description: '日期 16', format: DbcFieldFormat.intType),
    FieldDefinition(index: 31, name: 'Unknown1', description: '未知1', format: DbcFieldFormat.na),
    FieldDefinition(index: 32, name: 'Unknown2', description: '未知2', format: DbcFieldFormat.na),
    FieldDefinition(index: 33, name: 'TextureFilename', description: '纹理文件名', format: DbcFieldFormat.string),
    FieldDefinition(index: 34, name: 'ExpansionID', description: '资料片 ID', format: DbcFieldFormat.intType),
    FieldDefinition(index: 35, name: 'Flags', description: '标志', format: DbcFieldFormat.intType),
  ],
);
