import 'package:warcrafty/src/definition/base/field_definition.dart';
import 'package:warcrafty/src/definition/base/structure_definition.dart';
import 'package:warcrafty/src/core/field_format.dart';
import 'package:warcrafty/src/definition/common/locale_fields.dart';

/// Startup_Strings 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
final startupStrings = DbcStructureDefinition(
  name: 'Startup_Strings',
  format: 'nssssssssssssssssss',
  fields: [
    const FieldDefinition(index: 0, name: 'ID', description: 'ID', format: DbcFieldFormat.indexField),
    const FieldDefinition(index: 1, name: 'Name', description: 'Name', format: DbcFieldFormat.string),
    ...createLocaleFieldsWithFlag(2, 'Message_lang', 'Message_lang'),
  ],
);
