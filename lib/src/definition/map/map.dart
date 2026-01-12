import 'package:warcrafty/src/core/field_format.dart';
import 'package:warcrafty/src/definition/base/field_definition.dart';
import 'package:warcrafty/src/definition/base/structure_definition.dart';
import 'package:warcrafty/src/definition/common/locale_fields.dart';

/// Map 结构定义
///
/// 格式字符串参考 AzerothCore DBCfmt.h:
/// char constexpr MapEntryfmt[] = "nxixxssssssssssssssssxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxixifffii";
final mapEntry = DbcStructureDefinition(
  name: 'Map',
  format: 'nxiixssssssssssssssssxixxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxixiffxixi',
  fields: [
    const FieldDefinition(index: 0, name: 'MapID', description: '地图 ID', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 1, name: 'InternalName', description: '内部名称', format: DbcFieldFormat.na),
    const FieldDefinition(index: 2, name: 'MapType', description: '地图类型', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 3, name: 'Flags', description: '标志', format: DbcFieldFormat.intType),
    // 名称字段 (4-19): 16 种语言
    ...createLocaleFields(4, 'Name', '地图名称'),
    const FieldDefinition(index: 20, name: 'LinkedZone', description: '关联区域', format: DbcFieldFormat.intType),
    // 部落介绍字段 (21-36): 16 种语言 (未使用)
    ...createUnusedFields(21, 16, baseName: 'HordeIntro'),
    // 联盟介绍字段 (37-52): 16 种语言 (未使用)
    ...createUnusedFields(37, 16, baseName: 'AllianceIntro'),
    const FieldDefinition(index: 53, name: 'MultiMapID', description: '多地图 ID', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 54, name: 'BattlefieldMapIconScale', description: '战场地图图标缩放', format: DbcFieldFormat.float),
    const FieldDefinition(index: 55, name: 'EntranceMap', description: '入口地图 ID', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 56, name: 'EntranceX', description: '入口 X 坐标', format: DbcFieldFormat.float),
    const FieldDefinition(index: 57, name: 'EntranceY', description: '入口 Y 坐标', format: DbcFieldFormat.float),
    const FieldDefinition(index: 58, name: 'TimeOfDayOverride', description: '时间覆盖', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 59, name: 'ExpansionID', description: '资料片 ID', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 60, name: 'RaidOffset', description: '副本偏移', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 61, name: 'MaxPlayers', description: '最大玩家数', format: DbcFieldFormat.intType),
  ],
);
