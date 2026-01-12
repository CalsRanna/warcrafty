import 'package:warcrafty/src/core/field_format.dart';
import 'package:warcrafty/src/definition/base/field_definition.dart';
import 'package:warcrafty/src/definition/base/structure_definition.dart';
import 'package:warcrafty/src/definition/common/locale_fields.dart';

/// AreaTable 结构定义
///
/// 格式字符串参考 AzerothCore DBCfmt.h:
/// char constexpr AreaTableEntryfmt[] = "niiiixxxxxissssssssssssssssxiiiiixxx";
final areaTable = DbcStructureDefinition(
  name: 'AreaTable',
  format: 'niiiixxxxxissssssssssssssssxiiiiixxx',
  fields: [
    const FieldDefinition(index: 0, name: 'ID', description: '区域 ID', format: DbcFieldFormat.indexField),
    const FieldDefinition(index: 1, name: 'MapID', description: '地图 ID', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 2, name: 'ParentAreaID', description: '父区域 ID (0=主区域)', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 3, name: 'AreaBit', description: '区域位', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 4, name: 'Flags', description: '区域标志', format: DbcFieldFormat.intType),
    // 未使用字段 (5-9): 5 个 x
    ...createUnusedFields(5, 5),
    const FieldDefinition(index: 10, name: 'SoundProviderPref', description: '音效提供者偏好', format: DbcFieldFormat.intType),
    // 名称字段 (11-26): 16 种语言
    ...createLocaleFields(11, 'Name', '区域名称'),
    const FieldDefinition(index: 27, name: 'Name_Flags', description: '名称标志 (未使用)', format: DbcFieldFormat.na),
    const FieldDefinition(index: 28, name: 'FactionGroupMask', description: '阵营组掩码', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 29, name: 'LiquidTypeID0', description: '液体类型 ID 0', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 30, name: 'LiquidTypeID1', description: '液体类型 ID 1', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 31, name: 'LiquidTypeID2', description: '液体类型 ID 2', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 32, name: 'LiquidTypeID3', description: '液体类型 ID 3', format: DbcFieldFormat.intType),
    // 未使用字段 (33-35): 3 个 x
    ...createUnusedFields(33, 3),
  ],
);
