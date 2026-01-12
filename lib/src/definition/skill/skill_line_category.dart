import 'package:warcrafty/src/definition/base/field_definition.dart';
import 'package:warcrafty/src/definition/base/structure_definition.dart';
import 'package:warcrafty/src/core/field_format.dart';
import 'package:warcrafty/src/definition/common/locale_fields.dart';

/// SkillLineCategory 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
final skillLineCategory = DbcStructureDefinition(
  name: 'SkillLineCategory',
  format: 'nsssssssssssssssssi',
  fields: [
    const FieldDefinition(index: 0, name: 'ID', description: 'ID', format: DbcFieldFormat.indexField),
    ...createLocaleFieldsWithFlag(1, 'Name_lang', 'Name_lang'),
    const FieldDefinition(index: 18, name: 'SortIndex', description: 'SortIndex', format: DbcFieldFormat.intType),
  ],
);
