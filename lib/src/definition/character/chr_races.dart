import 'package:warcrafty/src/core/field_format.dart';
import 'package:warcrafty/src/definition/base/field_definition.dart';
import 'package:warcrafty/src/definition/base/structure_definition.dart';
import 'package:warcrafty/src/definition/common/locale_fields.dart';

/// ChrRaces 结构定义
///
/// 格式字符串参考 AzerothCore DBCfmt.h:
/// char constexpr ChrRacesEntryfmt[] = "niixiixixxxxixssssssssssssssssxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxi";
final chrRaces = DbcStructureDefinition(
  name: 'ChrRaces',
  format: 'niixiixixxxxixssssssssssssssssxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxi',
  fields: [
    const FieldDefinition(index: 0, name: 'ID', description: '种族 ID', format: DbcFieldFormat.indexField),
    const FieldDefinition(index: 1, name: 'Flags', description: '种族标志', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 2, name: 'FactionID', description: '派系模板 ID', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 3, name: 'ExplorationSoundID', description: '探索音效 ID (未使用)', format: DbcFieldFormat.na),
    const FieldDefinition(index: 4, name: 'MaleDisplayID', description: '男性模型 ID', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 5, name: 'FemaleDisplayID', description: '女性模型 ID', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 6, name: 'ClientPrefix', description: '客户端前缀 (未使用)', format: DbcFieldFormat.na),
    const FieldDefinition(index: 7, name: 'BaseLanguage', description: '基础语言', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 8, name: 'CreatureType', description: '生物类型 (未使用)', format: DbcFieldFormat.na),
    const FieldDefinition(index: 9, name: 'ResSicknessSpellID', description: '复活虚弱法术 ID (未使用)', format: DbcFieldFormat.na),
    const FieldDefinition(index: 10, name: 'SplashSoundID', description: '溅水音效 ID (未使用)', format: DbcFieldFormat.na),
    const FieldDefinition(index: 11, name: 'ClientFileString', description: '客户端文件字符串 (未使用)', format: DbcFieldFormat.na),
    const FieldDefinition(index: 12, name: 'CinematicSequenceID', description: '过场动画序列 ID', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 13, name: 'Alliance', description: '联盟/部落 (未使用)', format: DbcFieldFormat.na),
    // 名称字段 (14-29): 16 种语言
    ...createLocaleFields(14, 'Name', '种族名称'),
    // 未使用字段 (30-67): 38 个 x
    ...createUnusedFields(30, 38),
    const FieldDefinition(index: 68, name: 'Expansion', description: '资料片 ID (0=经典, 1=TBC, 2=WotLK)', format: DbcFieldFormat.intType),
  ],
);
