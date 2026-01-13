import 'package:warcrafty/src/internal/field.dart';
import 'package:warcrafty/src/internal/schema.dart';
import 'package:warcrafty/src/internal/locale_field.dart';

/// Exhaustion 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
final exhaustion = DbcSchema(
  name: 'Exhaustion',
  format: 'nifffsssssssssssssssssf',
  fields: [
    const Field(index: 0, name: 'ID', description: 'ID', type: FieldType.id),
    const Field(index: 1, name: 'Xp', description: 'Xp', type: FieldType.int32),
    const Field(index: 2, name: 'Factor', description: 'Factor', type: FieldType.float),
    const Field(index: 3, name: 'OutdoorHours', description: 'OutdoorHours', type: FieldType.float),
    const Field(index: 4, name: 'InnHours', description: 'InnHours', type: FieldType.float),
    ...createLocaleFieldsWithFlag(5, 'Name_lang', 'Name_lang'),
    const Field(index: 22, name: 'Threshold', description: 'Threshold', type: FieldType.float),
  ],
);
