import 'package:warcrafty/src/definition/base/field_definition.dart';
import 'package:warcrafty/src/definition/base/structure_definition.dart';
import 'package:warcrafty/src/core/field_format.dart';
import 'package:warcrafty/src/definition/common/locale_fields.dart';

/// Resistances 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
final resistances = DbcStructureDefinition(
  name: 'Resistances',
  format: 'niisssssssssssssssss',
  fields: [
    const FieldDefinition(index: 0, name: 'ID', description: 'ID', format: DbcFieldFormat.indexField),
    const FieldDefinition(index: 1, name: 'Flags', description: 'Flags', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 2, name: 'FizzleSoundID', description: 'FizzleSoundID', format: DbcFieldFormat.intType),
    ...createLocaleFieldsWithFlag(3, 'Name_lang', 'Name_lang'),
  ],
);
