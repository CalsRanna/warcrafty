import 'package:warcrafty/src/schema/field.dart';
import 'package:warcrafty/src/schema/schema.dart';
import 'package:warcrafty/src/tools/locale_fields.dart';

/// DanceMoves 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
final danceMoves = DbcSchema(
  name: 'DanceMoves',
  format: 'niiiissssssssssssssssssi',
  fields: [
    const Field(index: 0, name: 'ID', description: 'ID', type: FieldType.id),
    const Field(index: 1, name: 'Type', description: 'Type', type: FieldType.int32),
    const Field(index: 2, name: 'Param', description: 'Param', type: FieldType.int32),
    const Field(index: 3, name: 'Fallback', description: 'Fallback', type: FieldType.int32),
    const Field(index: 4, name: 'Racemask', description: 'Racemask', type: FieldType.int32),
    const Field(index: 5, name: 'Internal_name', description: 'Internal_name', type: FieldType.string),
    ...createLocaleFieldsWithFlag(6, 'Name_lang', 'Name_lang'),
    const Field(index: 23, name: 'LockID', description: 'LockID', type: FieldType.int32),
  ],
);
