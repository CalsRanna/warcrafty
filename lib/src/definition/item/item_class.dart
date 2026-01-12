import 'package:warcrafty/src/definition/base/field_definition.dart';
import 'package:warcrafty/src/definition/base/structure_definition.dart';
import 'package:warcrafty/src/core/field_format.dart';
import 'package:warcrafty/src/definition/common/locale_fields.dart';

/// ItemClass 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
final itemClass = DbcStructureDefinition(
  name: 'ItemClass',
  format: 'iiisssssssssssssssss',
  fields: [
    const FieldDefinition(index: 0, name: 'ClassID', description: 'ClassID', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 1, name: 'SubclassMapID', description: 'SubclassMapID', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 2, name: 'Flags', description: 'Flags', format: DbcFieldFormat.intType),
    ...createLocaleFieldsWithFlag(3, 'ClassName_lang', 'ClassName_lang'),
  ],
);
