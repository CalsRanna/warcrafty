import 'package:warcrafty/src/core/field_format.dart';
import 'package:warcrafty/src/definition/base/field_definition.dart';
import 'package:warcrafty/src/definition/base/structure_definition.dart';
import 'package:warcrafty/src/definition/common/locale_fields.dart';

/// ChrClasses 结构定义
///
/// 格式字符串参考 AzerothCore DBCfmt.h:
/// char constexpr ChrClassesEntryfmt[] = "nxixssssssssssssssssxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxixii";
final chrClasses = DbcStructureDefinition(
  name: 'ChrClasses',
  format: 'nxixssssssssssssssssxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxixii',
  fields: [
    const FieldDefinition(index: 0, name: 'ClassID', description: '职业 ID', format: DbcFieldFormat.indexField),
    const FieldDefinition(index: 1, name: 'DisplayPower', description: '显示能量类型 (未使用)', format: DbcFieldFormat.na),
    const FieldDefinition(index: 2, name: 'PetNameToken', description: '宠物名称标记', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 3, name: 'PrimaryStatPriority', description: '主属性优先级 (未使用)', format: DbcFieldFormat.na),
    // 名称字段 (4-19): 16 种语言
    ...createLocaleFields(4, 'Name', '职业名称'),
    // 未使用字段 (20-55): 36 个 x
    ...createUnusedFields(20, 36),
    const FieldDefinition(index: 56, name: 'SpellClassSet', description: '法术职业集', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 57, name: 'Flags', description: '职业标志 (未使用)', format: DbcFieldFormat.na),
    const FieldDefinition(index: 58, name: 'CinematicSequenceID', description: '过场动画序列 ID', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 59, name: 'RequiredExpansion', description: '资料片要求', format: DbcFieldFormat.intType),
  ],
);
