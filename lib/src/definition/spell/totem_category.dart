import 'package:warcrafty/src/definition/base/field_definition.dart';
import 'package:warcrafty/src/definition/base/structure_definition.dart';
import 'package:warcrafty/src/core/field_format.dart';
import 'package:warcrafty/src/definition/common/locale_fields.dart';

/// TotemCategory 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
final totemCategory = DbcStructureDefinition(
  name: 'TotemCategory',
  format: 'nsssssssssssssssssii',
  fields: [
    const FieldDefinition(index: 0, name: 'ID', description: 'ID', format: DbcFieldFormat.indexField),
    ...createLocaleFieldsWithFlag(1, 'Name_lang', 'Name_lang'),
    const FieldDefinition(index: 18, name: 'TotemCategoryType', description: 'TotemCategoryType', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 19, name: 'TotemCategoryMask', description: 'TotemCategoryMask', format: DbcFieldFormat.intType),
  ],
);
