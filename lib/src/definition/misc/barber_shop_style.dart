import 'package:warcrafty/src/core/field_definition.dart';
import 'package:warcrafty/src/core/structure_definition.dart';
import 'package:warcrafty/src/core/field_format.dart';
import 'package:warcrafty/src/core/locale_fields.dart';

/// BarberShopStyle 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
final barberShopStyle = DbcStructureDefinition(
  name: 'BarberShopStyle',
  format: 'nissssssssssssssssssssssssssssssssssfiii',
  fields: [
    const FieldDefinition(index: 0, name: 'ID', description: 'ID', format: DbcFieldFormat.indexField),
    const FieldDefinition(index: 1, name: 'Type', description: 'Type', format: DbcFieldFormat.intType),
    ...createLocaleFieldsWithFlag(2, 'DisplayName_lang', 'DisplayName_lang'),
    ...createLocaleFieldsWithFlag(19, 'Description_lang', 'Description_lang'),
    const FieldDefinition(index: 36, name: 'Cost_Modifier', description: 'Cost_Modifier', format: DbcFieldFormat.float),
    const FieldDefinition(index: 37, name: 'Race', description: 'Race', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 38, name: 'Sex', description: 'Sex', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 39, name: 'Data', description: 'Data', format: DbcFieldFormat.intType),
  ],
);
