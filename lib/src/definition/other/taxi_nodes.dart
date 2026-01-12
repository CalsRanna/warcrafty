import 'package:warcrafty/src/core/field_format.dart';
import 'package:warcrafty/src/definition/base/field_definition.dart';
import 'package:warcrafty/src/definition/base/structure_definition.dart';
import 'package:warcrafty/src/definition/common/locale_fields.dart';

/// TaxiNodes 结构定义
///
/// 格式字符串参考 AzerothCore DBCfmt.h:
/// char constexpr TaxiNodesEntryfmt[] = "nifffssssssssssssssssxii";
final taxiNodes = DbcStructureDefinition(
  name: 'TaxiNodes',
  format: 'nifffssssssssssssssssxii',
  fields: [
    const FieldDefinition(index: 0, name: 'ID', description: '节点 ID', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 1, name: 'MapID', description: '地图 ID', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 2, name: 'X', description: 'X 坐标', format: DbcFieldFormat.float),
    const FieldDefinition(index: 3, name: 'Y', description: 'Y 坐标', format: DbcFieldFormat.float),
    const FieldDefinition(index: 4, name: 'Z', description: 'Z 坐标', format: DbcFieldFormat.float),
    // 名称字段 (5-20): 16 种语言
    ...createLocaleFields(5, 'Name', '飞行点名称'),
    const FieldDefinition(index: 21, name: 'Name_Flags', description: '名称标志 (未使用)', format: DbcFieldFormat.na),
    const FieldDefinition(index: 22, name: 'MountCreatureID0', description: '联盟坐骑生物 ID', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 23, name: 'MountCreatureID1', description: '部落坐骑生物 ID', format: DbcFieldFormat.intType),
  ],
);
