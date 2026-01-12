import 'package:warcrafty/src/core/field_definition.dart';
import 'package:warcrafty/src/core/structure_definition.dart';
import 'package:warcrafty/src/core/field_format.dart';
import 'package:warcrafty/src/core/locale_fields.dart';

/// Achievement_Category 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
final achievementCategory = DbcStructureDefinition(
  name: 'Achievement_Category',
  format: 'nisssssssssssssssssi',
  fields: [
    const FieldDefinition(index: 0, name: 'ID', description: 'ID', format: DbcFieldFormat.indexField),
    const FieldDefinition(index: 1, name: 'Parent', description: 'Parent', format: DbcFieldFormat.intType),
    ...createLocaleFieldsWithFlag(2, 'Name_lang', 'Name_lang'),
    const FieldDefinition(index: 19, name: 'Ui_order', description: 'Ui_order', format: DbcFieldFormat.intType),
  ],
);
