import 'package:warcrafty/src/definition/base/field_definition.dart';
import 'package:warcrafty/src/definition/base/structure_definition.dart';
import 'package:warcrafty/src/core/field_format.dart';
import 'package:warcrafty/src/definition/common/locale_fields.dart';

/// ItemSubClassMask 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
final itemSubClassMask = DbcStructureDefinition(
  name: 'ItemSubClassMask',
  format: 'iisssssssssssssssss',
  fields: [
    const FieldDefinition(index: 0, name: 'ClassID', description: 'ClassID', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 1, name: 'Mask', description: 'Mask', format: DbcFieldFormat.intType),
    ...createLocaleFieldsWithFlag(2, 'Name_lang', 'Name_lang'),
  ],
);
