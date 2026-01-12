/// AreaPOI.dbc - 区域兴趣点格式
library;

import '../base/field_definition.dart';
import '../base/structure_definition.dart';
import '../../core/field_format.dart';

/// AreaPOI 格式字符串
const String areaPoiFormat = 'niiiiiiiiiiifffixixxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxix';

/// AreaPOI 结构定义
const DbcStructureDefinition areaPoi = DbcStructureDefinition(
  name: 'AreaPOI',
  format: areaPoiFormat,
  fields: [
    FieldDefinition(index: 0, name: 'ID', description: '区域 POI ID', format: DbcFieldFormat.intType),
    FieldDefinition(index: 1, name: 'IconFlags', description: '图标标志', format: DbcFieldFormat.intType),
    FieldDefinition(index: 2, name: 'Icon', description: '图标', format: DbcFieldFormat.intType),
    FieldDefinition(index: 3, name: 'MapID', description: '地图 ID', format: DbcFieldFormat.intType),
    FieldDefinition(index: 4, name: 'AreaID', description: '区域 ID', format: DbcFieldFormat.intType),
    FieldDefinition(index: 5, name: 'Priority', description: '优先级', format: DbcFieldFormat.intType),
    FieldDefinition(index: 6, name: 'Flags', description: '标志', format: DbcFieldFormat.intType),
    FieldDefinition(index: 7, name: 'FactionID', description: '阵营 ID', format: DbcFieldFormat.intType),
    FieldDefinition(index: 8, name: 'Unknown1', description: '未知1', format: DbcFieldFormat.intType),
    FieldDefinition(index: 9, name: 'Unknown2', description: '未知2', format: DbcFieldFormat.intType),
    FieldDefinition(index: 10, name: 'Unknown3', description: '未知3', format: DbcFieldFormat.intType),
    FieldDefinition(index: 11, name: 'PosX', description: '位置 X', format: DbcFieldFormat.float),
    FieldDefinition(index: 12, name: 'PosY', description: '位置 Y', format: DbcFieldFormat.float),
    FieldDefinition(index: 13, name: 'PosZ', description: '位置 Z', format: DbcFieldFormat.float),
    FieldDefinition(index: 14, name: 'Unknown4', description: '未知4', format: DbcFieldFormat.intType),
    FieldDefinition(index: 15, name: 'Unknown5', description: '未知5', format: DbcFieldFormat.intType),
  ],
);
