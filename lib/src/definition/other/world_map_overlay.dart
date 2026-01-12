import 'package:warcrafty/src/definition/base/field_definition.dart';
import 'package:warcrafty/src/definition/base/structure_definition.dart';
import 'package:warcrafty/src/core/field_format.dart';

/// WorldMapOverlay 格式字符串

/// WorldMapOverlay 结构定义
const worldMapOverlay = DbcStructureDefinition(
  name: 'WorldMapOverlay',
  format: 'nxiiiixxxxxxxxxxx',
  fields: [
    FieldDefinition(index: 0, name: 'ID', description: 'ID', format: DbcFieldFormat.intType),
    FieldDefinition(index: 1, name: 'Unknown1', description: '未知1', format: DbcFieldFormat.na),
    FieldDefinition(index: 2, name: 'AreaID', description: '区域 ID', format: DbcFieldFormat.intType),
    FieldDefinition(index: 3, name: 'MapID', description: '地图 ID', format: DbcFieldFormat.intType),
    FieldDefinition(index: 4, name: 'Unknown2', description: '未知2', format: DbcFieldFormat.intType),
    FieldDefinition(index: 5, name: 'Unknown3', description: '未知3', format: DbcFieldFormat.intType),
  ],
);
