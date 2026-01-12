import 'package:warcrafty/src/core/field_definition.dart';
import 'package:warcrafty/src/core/structure_definition.dart';
import 'package:warcrafty/src/core/field_format.dart';
import 'package:warcrafty/src/core/locale_fields.dart';

/// FactionGroup 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
final factionGroup = DbcStructureDefinition(
  name: 'FactionGroup',
  format: 'nissssssssssssssssss',
  fields: [
    const FieldDefinition(index: 0, name: 'ID', description: 'ID', format: DbcFieldFormat.indexField),
    const FieldDefinition(index: 1, name: 'MaskID', description: 'MaskID', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 2, name: 'InternalName', description: 'InternalName', format: DbcFieldFormat.string),
    ...createLocaleFieldsWithFlag(3, 'Name_lang', 'Name_lang'),
  ],
);
