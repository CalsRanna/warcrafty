import 'package:warcrafty/src/core/field_format.dart';
import 'package:warcrafty/src/definition/base/field_definition.dart';
import 'package:warcrafty/src/definition/base/structure_definition.dart';
import 'package:warcrafty/src/definition/common/locale_fields.dart';

/// TotemCategory 结构定义
///
/// 格式字符串参考 AzerothCore DBCfmt.h:
/// char constexpr TotemCategoryEntryfmt[] = "nxxxxxxxxxxxxxxxxxii";
///
/// 结构参考 DBCStructure.h:
/// - ID: 索引
/// - Name[16]: 16 种语言名称 (未使用，标记为 x)
/// - StringFlags: 字符串标志 (未使用)
/// - CategoryType: 类别类型 (1=图腾专精)
/// - CategoryMask: 类别掩码 (兼容性掩码)
final totemCategory = DbcStructureDefinition(
  name: 'TotemCategory',
  format: 'nxxxxxxxxxxxxxxxxxii',
  fields: [
    const FieldDefinition(
      index: 0,
      name: 'ID',
      description: '图腾类别 ID',
      format: DbcFieldFormat.indexField,
    ),
    // 名称字段 (1-16): 16 种语言 - 未使用，标记为 x
    ...createUnusedFields(1, 16, baseName: 'Name'),
    const FieldDefinition(
      index: 17,
      name: 'Name_Flags',
      description: '名称字符串标志 (未使用)',
      format: DbcFieldFormat.na,
    ),
    const FieldDefinition(
      index: 18,
      name: 'CategoryType',
      description: '类别类型 (1=图腾专精)',
      format: DbcFieldFormat.intType,
    ),
    const FieldDefinition(
      index: 19,
      name: 'CategoryMask',
      description: '类别掩码 (兼容性掩码)',
      format: DbcFieldFormat.intType,
    ),
  ],
);
