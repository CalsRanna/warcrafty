import 'package:warcrafty/src/schema/field.dart';
import 'package:warcrafty/src/schema/schema.dart';
import 'package:warcrafty/src/tool/locale_field.dart';

/// LFGDungeonGroup 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
final lFGDungeonGroup = DbcSchema(
  name: 'LFGDungeonGroup',
  format: 'nsssssssssssssssssiii',
  fields: [
    const Field(index: 0, name: 'ID', description: 'ID', type: FieldType.id),
    ...createLocaleFieldsWithFlag(1, 'Name_lang', 'Name_lang'),
    const Field(
      index: 18,
      name: 'Order_index',
      description: 'Order_index',
      type: FieldType.int32,
    ),
    const Field(
      index: 19,
      name: 'Parent_group_ID',
      description: 'Parent_group_ID',
      type: FieldType.int32,
    ),
    const Field(
      index: 20,
      name: 'TypeID',
      description: 'TypeID',
      type: FieldType.int32,
    ),
  ],
);
