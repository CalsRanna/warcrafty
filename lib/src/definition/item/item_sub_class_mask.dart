import 'package:warcrafty/src/schema/field.dart';
import 'package:warcrafty/src/schema/schema.dart';
import 'package:warcrafty/src/tool/locale_field.dart';

/// ItemSubClassMask 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
final itemSubClassMask = DbcSchema(
  name: 'ItemSubClassMask',
  format: 'iisssssssssssssssss',
  fields: [
    const Field(
      index: 0,
      name: 'ClassID',
      description: 'ClassID',
      type: FieldType.int32,
    ),
    const Field(
      index: 1,
      name: 'Mask',
      description: 'Mask',
      type: FieldType.int32,
    ),
    ...createLocaleFieldsWithFlag(2, 'Name_lang', 'Name_lang'),
  ],
);
