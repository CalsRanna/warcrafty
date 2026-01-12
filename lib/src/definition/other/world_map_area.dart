import 'package:warcrafty/src/definition/base/field_definition.dart';
import 'package:warcrafty/src/definition/base/structure_definition.dart';
import 'package:warcrafty/src/core/field_format.dart';

/// WorldMapArea 格式字符串

/// WorldMapArea 结构定义
const worldMapArea = DbcStructureDefinition(
  name: 'WorldMapArea',
  format: 'xinxffffixx',
  fields: [
    FieldDefinition(index: 0, name: 'MapID', description: '地图 ID', format: DbcFieldFormat.na),
    FieldDefinition(index: 1, name: 'AreaID', description: '区域 ID', format: DbcFieldFormat.intType),
    FieldDefinition(index: 2, name: 'AreaName', description: '区域名称', format: DbcFieldFormat.na),
    FieldDefinition(index: 3, name: 'LocLeft', description: '左边界', format: DbcFieldFormat.float),
    FieldDefinition(index: 4, name: 'LocRight', description: '右边界', format: DbcFieldFormat.float),
    FieldDefinition(index: 5, name: 'LocTop', description: '上边界', format: DbcFieldFormat.float),
    FieldDefinition(index: 6, name: 'LocBottom', description: '下边界', format: DbcFieldFormat.float),
    FieldDefinition(index: 7, name: 'DungeonMapID', description: '地下城地图 ID', format: DbcFieldFormat.intType),
    FieldDefinition(index: 8, name: 'Unknown1', description: '未知1', format: DbcFieldFormat.intType),
  ],
);
