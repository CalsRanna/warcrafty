import 'package:warcrafty/src/schema/field.dart';
import 'package:warcrafty/src/schema/schema.dart';
import 'package:warcrafty/src/tools/locale_fields.dart';

/// AreaPOI 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
final areaPOI = DbcSchema(
  name: 'AreaPOI',
  format: 'niiiiiiiiiiifffiiissssssssssssssssssssssssssssssssssii',
  fields: [
    const Field(index: 0, name: 'ID', description: 'ID', type: FieldType.id),
    const Field(index: 1, name: 'Importance', description: 'Importance', type: FieldType.int32),
    const Field(index: 2, name: 'Icon0', description: 'Icon 0', type: FieldType.int32),
    const Field(index: 3, name: 'Icon1', description: 'Icon 1', type: FieldType.int32),
    const Field(index: 4, name: 'Icon2', description: 'Icon 2', type: FieldType.int32),
    const Field(index: 5, name: 'Icon3', description: 'Icon 3', type: FieldType.int32),
    const Field(index: 6, name: 'Icon4', description: 'Icon 4', type: FieldType.int32),
    const Field(index: 7, name: 'Icon5', description: 'Icon 5', type: FieldType.int32),
    const Field(index: 8, name: 'Icon6', description: 'Icon 6', type: FieldType.int32),
    const Field(index: 9, name: 'Icon7', description: 'Icon 7', type: FieldType.int32),
    const Field(index: 10, name: 'Icon8', description: 'Icon 8', type: FieldType.int32),
    const Field(index: 11, name: 'FactionID', description: 'FactionID', type: FieldType.int32),
    const Field(index: 12, name: 'Pos0', description: 'Pos 0', type: FieldType.float),
    const Field(index: 13, name: 'Pos1', description: 'Pos 1', type: FieldType.float),
    const Field(index: 14, name: 'Pos2', description: 'Pos 2', type: FieldType.float),
    const Field(index: 15, name: 'ContinentID', description: 'ContinentID', type: FieldType.int32),
    const Field(index: 16, name: 'Flags', description: 'Flags', type: FieldType.int32),
    const Field(index: 17, name: 'AreaID', description: 'AreaID', type: FieldType.int32),
    ...createLocaleFieldsWithFlag(18, 'Name_lang', 'Name_lang'),
    ...createLocaleFieldsWithFlag(35, 'Description_lang', 'Description_lang'),
    const Field(index: 52, name: 'WorldStateID', description: 'WorldStateID', type: FieldType.int32),
    const Field(index: 53, name: 'WorldMapLink', description: 'WorldMapLink', type: FieldType.int32),
  ],
);
