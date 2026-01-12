import 'package:warcrafty/src/core/field_format.dart';
import 'package:warcrafty/src/definition/base/field_definition.dart';
import 'package:warcrafty/src/definition/base/structure_definition.dart';
import 'package:warcrafty/src/definition/common/locale_fields.dart';

/// Faction 结构定义
///
/// 格式字符串参考 AzerothCore DBCfmt.h:
/// char constexpr FactionEntryfmt[] = "niiiiiiiiiiiiiiiiiiffixssssssssssssssssxxxxxxxxxxxxxxxxxx";
final faction = DbcStructureDefinition(
  name: 'Faction',
  format: 'niiiiiiiiiiiiiiiiiiffixssssssssssssssssxxxxxxxxxxxxxxxxxx',
  fields: [
    const FieldDefinition(index: 0, name: 'ID', description: '派系 ID', format: DbcFieldFormat.indexField),
    const FieldDefinition(index: 1, name: 'ReputationIndex', description: '声望索引', format: DbcFieldFormat.intType),
    // 基础声望种族掩码 (2-5)
    const FieldDefinition(index: 2, name: 'ReputationRaceMask0', description: '声望种族掩码 0', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 3, name: 'ReputationRaceMask1', description: '声望种族掩码 1', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 4, name: 'ReputationRaceMask2', description: '声望种族掩码 2', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 5, name: 'ReputationRaceMask3', description: '声望种族掩码 3', format: DbcFieldFormat.intType),
    // 基础声望职业掩码 (6-9)
    const FieldDefinition(index: 6, name: 'ReputationClassMask0', description: '声望职业掩码 0', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 7, name: 'ReputationClassMask1', description: '声望职业掩码 1', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 8, name: 'ReputationClassMask2', description: '声望职业掩码 2', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 9, name: 'ReputationClassMask3', description: '声望职业掩码 3', format: DbcFieldFormat.intType),
    // 基础声望值 (10-13)
    const FieldDefinition(index: 10, name: 'ReputationBase0', description: '声望基础值 0', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 11, name: 'ReputationBase1', description: '声望基础值 1', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 12, name: 'ReputationBase2', description: '声望基础值 2', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 13, name: 'ReputationBase3', description: '声望基础值 3', format: DbcFieldFormat.intType),
    // 声望标志 (14-17)
    const FieldDefinition(index: 14, name: 'ReputationFlags0', description: '声望标志 0', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 15, name: 'ReputationFlags1', description: '声望标志 1', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 16, name: 'ReputationFlags2', description: '声望标志 2', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 17, name: 'ReputationFlags3', description: '声望标志 3', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 18, name: 'ParentFactionID', description: '父派系 ID', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 19, name: 'ParentFactionMod0', description: '父派系修正值 0', format: DbcFieldFormat.float),
    const FieldDefinition(index: 20, name: 'ParentFactionMod1', description: '父派系修正值 1', format: DbcFieldFormat.float),
    const FieldDefinition(index: 21, name: 'ParentFactionCap0', description: '父派系上限 0', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 22, name: 'ParentFactionCap1', description: '父派系上限 1 (未使用)', format: DbcFieldFormat.na),
    // 名称字段 (23-38): 16 种语言
    ...createLocaleFields(23, 'Name', '派系名称'),
    // 未使用字段 (39-56): 18 个 x (描述字段等)
    ...createUnusedFields(39, 18),
  ],
);
