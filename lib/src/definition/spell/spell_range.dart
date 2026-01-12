import 'package:warcrafty/src/core/field_definition.dart';
import 'package:warcrafty/src/core/structure_definition.dart';
import 'package:warcrafty/src/core/field_format.dart';
import 'package:warcrafty/src/core/locale_fields.dart';

/// SpellRange 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
final spellRange = DbcStructureDefinition(
  name: 'SpellRange',
  format: 'nffffissssssssssssssssssssssssssssssssss',
  fields: [
    const FieldDefinition(index: 0, name: 'ID', description: 'ID', format: DbcFieldFormat.indexField),
    const FieldDefinition(index: 1, name: 'RangeMin0', description: 'RangeMin 0', format: DbcFieldFormat.float),
    const FieldDefinition(index: 2, name: 'RangeMin1', description: 'RangeMin 1', format: DbcFieldFormat.float),
    const FieldDefinition(index: 3, name: 'RangeMax0', description: 'RangeMax 0', format: DbcFieldFormat.float),
    const FieldDefinition(index: 4, name: 'RangeMax1', description: 'RangeMax 1', format: DbcFieldFormat.float),
    const FieldDefinition(index: 5, name: 'Flags', description: 'Flags', format: DbcFieldFormat.intType),
    ...createLocaleFieldsWithFlag(6, 'DisplayName_lang', 'DisplayName_lang'),
    ...createLocaleFieldsWithFlag(23, 'DisplayNameShort_lang', 'DisplayNameShort_lang'),
  ],
);
