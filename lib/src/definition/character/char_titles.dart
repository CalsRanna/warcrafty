import 'package:warcrafty/src/core/field_definition.dart';
import 'package:warcrafty/src/core/structure_definition.dart';
import 'package:warcrafty/src/core/field_format.dart';
import 'package:warcrafty/src/core/locale_fields.dart';

/// CharTitles 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
final charTitles = DbcStructureDefinition(
  name: 'CharTitles',
  format: 'nissssssssssssssssssssssssssssssssssi',
  fields: [
    const FieldDefinition(index: 0, name: 'ID', description: 'ID', format: DbcFieldFormat.indexField),
    const FieldDefinition(index: 1, name: 'Condition_ID', description: 'Condition_ID', format: DbcFieldFormat.intType),
    ...createLocaleFieldsWithFlag(2, 'Name_lang', 'Name_lang'),
    ...createLocaleFieldsWithFlag(19, 'Name1_lang', 'Name1_lang'),
    const FieldDefinition(index: 36, name: 'Mask_ID', description: 'Mask_ID', format: DbcFieldFormat.intType),
  ],
);
