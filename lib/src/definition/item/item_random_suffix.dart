import 'package:warcrafty/src/internal/field.dart';
import 'package:warcrafty/src/internal/schema.dart';
import 'package:warcrafty/src/internal/locale_field.dart';

/// ItemRandomSuffix 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
final itemRandomSuffix = DbcSchema(
  name: 'ItemRandomSuffix',
  format: 'nssssssssssssssssssiiiiiiiiii',
  fields: [
    const Field(index: 0, name: 'ID', description: 'ID', type: FieldType.id),
    ...createLocaleFieldsWithFlag(1, 'Name_lang', 'Name_lang'),
    const Field(index: 18, name: 'InternalName', description: 'InternalName', type: FieldType.string),
    const Field(index: 19, name: 'Enchantment0', description: 'Enchantment 0', type: FieldType.int32),
    const Field(index: 20, name: 'Enchantment1', description: 'Enchantment 1', type: FieldType.int32),
    const Field(index: 21, name: 'Enchantment2', description: 'Enchantment 2', type: FieldType.int32),
    const Field(index: 22, name: 'Enchantment3', description: 'Enchantment 3', type: FieldType.int32),
    const Field(index: 23, name: 'Enchantment4', description: 'Enchantment 4', type: FieldType.int32),
    const Field(index: 24, name: 'AllocationPct0', description: 'AllocationPct 0', type: FieldType.int32),
    const Field(index: 25, name: 'AllocationPct1', description: 'AllocationPct 1', type: FieldType.int32),
    const Field(index: 26, name: 'AllocationPct2', description: 'AllocationPct 2', type: FieldType.int32),
    const Field(index: 27, name: 'AllocationPct3', description: 'AllocationPct 3', type: FieldType.int32),
    const Field(index: 28, name: 'AllocationPct4', description: 'AllocationPct 4', type: FieldType.int32),
  ],
);
