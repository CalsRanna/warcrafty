import 'package:warcrafty/src/schema/field.dart';
import 'package:warcrafty/src/schema/schema.dart';
import 'package:warcrafty/src/tools/locale_fields.dart';

/// BarberShopStyle 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
final barberShopStyle = DbcSchema(
  name: 'BarberShopStyle',
  format: 'nissssssssssssssssssssssssssssssssssfiii',
  fields: [
    const Field(index: 0, name: 'ID', description: 'ID', type: FieldType.id),
    const Field(index: 1, name: 'Type', description: 'Type', type: FieldType.int32),
    ...createLocaleFieldsWithFlag(2, 'DisplayName_lang', 'DisplayName_lang'),
    ...createLocaleFieldsWithFlag(19, 'Description_lang', 'Description_lang'),
    const Field(index: 36, name: 'Cost_Modifier', description: 'Cost_Modifier', type: FieldType.float),
    const Field(index: 37, name: 'Race', description: 'Race', type: FieldType.int32),
    const Field(index: 38, name: 'Sex', description: 'Sex', type: FieldType.int32),
    const Field(index: 39, name: 'Data', description: 'Data', type: FieldType.int32),
  ],
);
