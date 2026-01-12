import 'package:warcrafty/src/core/field_format.dart';
import 'package:warcrafty/src/definition/base/field_definition.dart';
import 'package:warcrafty/src/definition/base/structure_definition.dart';
import 'package:warcrafty/src/definition/common/locale_fields.dart';

/// DungeonEncounter 结构定义
///
/// 格式字符串参考 AzerothCore DBCfmt.h:
/// char constexpr DungeonEncounterfmt[] = "niixissssssssssssssssxx";
final dungeonEncounter = DbcStructureDefinition(
  name: 'DungeonEncounter',
  format: 'niixissssssssssssssssxx',
  fields: [
    const FieldDefinition(index: 0, name: 'ID', description: '首领 ID', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 1, name: 'MapID', description: '地图 ID', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 2, name: 'Difficulty', description: '难度', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 3, name: 'OrderIndex', description: '顺序索引', format: DbcFieldFormat.na),
    const FieldDefinition(index: 4, name: 'EncounterIndex', description: '首领索引', format: DbcFieldFormat.intType),
    // 名称字段 (5-20): 16 种语言
    ...createLocaleFields(5, 'Name', '首领名称'),
    const FieldDefinition(index: 21, name: 'Name_Flags', description: '名称标志 (未使用)', format: DbcFieldFormat.na),
    const FieldDefinition(index: 22, name: 'SpellIconID', description: '法术图标 ID (未使用)', format: DbcFieldFormat.na),
  ],
);
