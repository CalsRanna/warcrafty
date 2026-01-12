import 'package:warcrafty/src/schema/field.dart';
import 'package:warcrafty/src/schema/schema.dart';
import 'package:warcrafty/src/tool/locale_field.dart';

/// ItemSubClass 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
final itemSubClass = DbcSchema(
  name: 'ItemSubClass',
  format: 'iiiiiiiiiissssssssssssssssssssssssssssssssss',
  fields: [
    const Field(
      index: 0,
      name: 'ClassID',
      description: 'ClassID',
      type: FieldType.int32,
    ),
    const Field(
      index: 1,
      name: 'SubClassID',
      description: 'SubClassID',
      type: FieldType.int32,
    ),
    const Field(
      index: 2,
      name: 'PrerequisiteProficiency',
      description: 'PrerequisiteProficiency',
      type: FieldType.int32,
    ),
    const Field(
      index: 3,
      name: 'PostrequisiteProficiency',
      description: 'PostrequisiteProficiency',
      type: FieldType.int32,
    ),
    const Field(
      index: 4,
      name: 'Flags',
      description: 'Flags',
      type: FieldType.int32,
    ),
    const Field(
      index: 5,
      name: 'DisplayFlags',
      description: 'DisplayFlags',
      type: FieldType.int32,
    ),
    const Field(
      index: 6,
      name: 'WeaponParrySeq',
      description: 'WeaponParrySeq',
      type: FieldType.int32,
    ),
    const Field(
      index: 7,
      name: 'WeaponReadySeq',
      description: 'WeaponReadySeq',
      type: FieldType.int32,
    ),
    const Field(
      index: 8,
      name: 'WeaponAttackSeq',
      description: 'WeaponAttackSeq',
      type: FieldType.int32,
    ),
    const Field(
      index: 9,
      name: 'WeaponSwingSize',
      description: 'WeaponSwingSize',
      type: FieldType.int32,
    ),
    ...createLocaleFieldsWithFlag(10, 'DisplayName_lang', 'DisplayName_lang'),
    ...createLocaleFieldsWithFlag(27, 'VerboseName_lang', 'VerboseName_lang'),
  ],
);
