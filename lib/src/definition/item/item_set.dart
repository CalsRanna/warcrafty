import 'package:warcrafty/src/schema/field.dart';
import 'package:warcrafty/src/schema/schema.dart';
import 'package:warcrafty/src/tool/locale_field.dart';

/// ItemSet 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
final itemSet = DbcSchema(
  name: 'ItemSet',
  format: 'nsssssssssssssssssiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiii',
  fields: [
    const Field(index: 0, name: 'ID', description: 'ID', type: FieldType.id),
    ...createLocaleFieldsWithFlag(1, 'Name_lang', 'Name_lang'),
    const Field(
      index: 18,
      name: 'ItemID0',
      description: 'ItemID 0',
      type: FieldType.int32,
    ),
    const Field(
      index: 19,
      name: 'ItemID1',
      description: 'ItemID 1',
      type: FieldType.int32,
    ),
    const Field(
      index: 20,
      name: 'ItemID2',
      description: 'ItemID 2',
      type: FieldType.int32,
    ),
    const Field(
      index: 21,
      name: 'ItemID3',
      description: 'ItemID 3',
      type: FieldType.int32,
    ),
    const Field(
      index: 22,
      name: 'ItemID4',
      description: 'ItemID 4',
      type: FieldType.int32,
    ),
    const Field(
      index: 23,
      name: 'ItemID5',
      description: 'ItemID 5',
      type: FieldType.int32,
    ),
    const Field(
      index: 24,
      name: 'ItemID6',
      description: 'ItemID 6',
      type: FieldType.int32,
    ),
    const Field(
      index: 25,
      name: 'ItemID7',
      description: 'ItemID 7',
      type: FieldType.int32,
    ),
    const Field(
      index: 26,
      name: 'ItemID8',
      description: 'ItemID 8',
      type: FieldType.int32,
    ),
    const Field(
      index: 27,
      name: 'ItemID9',
      description: 'ItemID 9',
      type: FieldType.int32,
    ),
    const Field(
      index: 28,
      name: 'ItemID10',
      description: 'ItemID 10',
      type: FieldType.int32,
    ),
    const Field(
      index: 29,
      name: 'ItemID11',
      description: 'ItemID 11',
      type: FieldType.int32,
    ),
    const Field(
      index: 30,
      name: 'ItemID12',
      description: 'ItemID 12',
      type: FieldType.int32,
    ),
    const Field(
      index: 31,
      name: 'ItemID13',
      description: 'ItemID 13',
      type: FieldType.int32,
    ),
    const Field(
      index: 32,
      name: 'ItemID14',
      description: 'ItemID 14',
      type: FieldType.int32,
    ),
    const Field(
      index: 33,
      name: 'ItemID15',
      description: 'ItemID 15',
      type: FieldType.int32,
    ),
    const Field(
      index: 34,
      name: 'ItemID16',
      description: 'ItemID 16',
      type: FieldType.int32,
    ),
    const Field(
      index: 35,
      name: 'SetSpellID0',
      description: 'SetSpellID 0',
      type: FieldType.int32,
    ),
    const Field(
      index: 36,
      name: 'SetSpellID1',
      description: 'SetSpellID 1',
      type: FieldType.int32,
    ),
    const Field(
      index: 37,
      name: 'SetSpellID2',
      description: 'SetSpellID 2',
      type: FieldType.int32,
    ),
    const Field(
      index: 38,
      name: 'SetSpellID3',
      description: 'SetSpellID 3',
      type: FieldType.int32,
    ),
    const Field(
      index: 39,
      name: 'SetSpellID4',
      description: 'SetSpellID 4',
      type: FieldType.int32,
    ),
    const Field(
      index: 40,
      name: 'SetSpellID5',
      description: 'SetSpellID 5',
      type: FieldType.int32,
    ),
    const Field(
      index: 41,
      name: 'SetSpellID6',
      description: 'SetSpellID 6',
      type: FieldType.int32,
    ),
    const Field(
      index: 42,
      name: 'SetSpellID7',
      description: 'SetSpellID 7',
      type: FieldType.int32,
    ),
    const Field(
      index: 43,
      name: 'SetThreshold0',
      description: 'SetThreshold 0',
      type: FieldType.int32,
    ),
    const Field(
      index: 44,
      name: 'SetThreshold1',
      description: 'SetThreshold 1',
      type: FieldType.int32,
    ),
    const Field(
      index: 45,
      name: 'SetThreshold2',
      description: 'SetThreshold 2',
      type: FieldType.int32,
    ),
    const Field(
      index: 46,
      name: 'SetThreshold3',
      description: 'SetThreshold 3',
      type: FieldType.int32,
    ),
    const Field(
      index: 47,
      name: 'SetThreshold4',
      description: 'SetThreshold 4',
      type: FieldType.int32,
    ),
    const Field(
      index: 48,
      name: 'SetThreshold5',
      description: 'SetThreshold 5',
      type: FieldType.int32,
    ),
    const Field(
      index: 49,
      name: 'SetThreshold6',
      description: 'SetThreshold 6',
      type: FieldType.int32,
    ),
    const Field(
      index: 50,
      name: 'SetThreshold7',
      description: 'SetThreshold 7',
      type: FieldType.int32,
    ),
    const Field(
      index: 51,
      name: 'RequiredSkill',
      description: 'RequiredSkill',
      type: FieldType.int32,
    ),
    const Field(
      index: 52,
      name: 'RequiredSkillRank',
      description: 'RequiredSkillRank',
      type: FieldType.int32,
    ),
  ],
);
