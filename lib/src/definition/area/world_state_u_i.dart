import 'package:warcrafty/src/schema/field.dart';
import 'package:warcrafty/src/schema/schema.dart';
import 'package:warcrafty/src/tool/locale_field.dart';

/// WorldStateUI 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
final worldStateUI = DbcSchema(
  name: 'WorldStateUI',
  format: 'niiisssssssssssssssssssssssssssssssssssiisssssssssssssssssssiii',
  fields: [
    const Field(index: 0, name: 'ID', description: 'ID', type: FieldType.id),
    const Field(
      index: 1,
      name: 'MapID',
      description: 'MapID',
      type: FieldType.int32,
    ),
    const Field(
      index: 2,
      name: 'AreaID',
      description: 'AreaID',
      type: FieldType.int32,
    ),
    const Field(
      index: 3,
      name: 'PhaseShift',
      description: 'PhaseShift',
      type: FieldType.int32,
    ),
    const Field(
      index: 4,
      name: 'Icon',
      description: 'Icon',
      type: FieldType.string,
    ),
    ...createLocaleFieldsWithFlag(5, 'String_lang', 'String_lang'),
    ...createLocaleFieldsWithFlag(22, 'Tooltip_lang', 'Tooltip_lang'),
    const Field(
      index: 39,
      name: 'StateVariable',
      description: 'StateVariable',
      type: FieldType.int32,
    ),
    const Field(
      index: 40,
      name: 'Type',
      description: 'Type',
      type: FieldType.int32,
    ),
    const Field(
      index: 41,
      name: 'DynamicIcon',
      description: 'DynamicIcon',
      type: FieldType.string,
    ),
    ...createLocaleFieldsWithFlag(
      42,
      'DynamicTooltip_lang',
      'DynamicTooltip_lang',
    ),
    const Field(
      index: 59,
      name: 'ExtendedUI',
      description: 'ExtendedUI',
      type: FieldType.string,
    ),
    const Field(
      index: 60,
      name: 'ExtendedUIStateVariable0',
      description: 'ExtendedUIStateVariable 0',
      type: FieldType.int32,
    ),
    const Field(
      index: 61,
      name: 'ExtendedUIStateVariable1',
      description: 'ExtendedUIStateVariable 1',
      type: FieldType.int32,
    ),
    const Field(
      index: 62,
      name: 'ExtendedUIStateVariable2',
      description: 'ExtendedUIStateVariable 2',
      type: FieldType.int32,
    ),
  ],
);
