import 'package:warcrafty/src/schema/field.dart';
import 'package:warcrafty/src/schema/schema.dart';
import 'package:warcrafty/src/tool/locale_field.dart';

/// ItemClass 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
final itemClass = DbcSchema(
  name: 'ItemClass',
  format: 'iiisssssssssssssssss',
  fields: [
    const Field(
      index: 0,
      name: 'ClassID',
      description: 'ClassID',
      type: FieldType.int32,
    ),
    const Field(
      index: 1,
      name: 'SubclassMapID',
      description: 'SubclassMapID',
      type: FieldType.int32,
    ),
    const Field(
      index: 2,
      name: 'Flags',
      description: 'Flags',
      type: FieldType.int32,
    ),
    ...createLocaleFieldsWithFlag(3, 'ClassName_lang', 'ClassName_lang'),
  ],
);
