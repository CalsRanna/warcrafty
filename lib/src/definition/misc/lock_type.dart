import 'package:warcrafty/src/definition/base/field_definition.dart';
import 'package:warcrafty/src/definition/base/structure_definition.dart';
import 'package:warcrafty/src/core/field_format.dart';
import 'package:warcrafty/src/definition/common/locale_fields.dart';

/// LockType 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
final lockType = DbcStructureDefinition(
  name: 'LockType',
  format: 'nssssssssssssssssssssssssssssssssssssssssssssssssssss',
  fields: [
    const FieldDefinition(index: 0, name: 'ID', description: 'ID', format: DbcFieldFormat.indexField),
    ...createLocaleFieldsWithFlag(1, 'Name_lang', 'Name_lang'),
    ...createLocaleFieldsWithFlag(18, 'ResourceName_lang', 'ResourceName_lang'),
    ...createLocaleFieldsWithFlag(35, 'Verb_lang', 'Verb_lang'),
    const FieldDefinition(index: 52, name: 'CursorName', description: 'CursorName', format: DbcFieldFormat.string),
  ],
);
