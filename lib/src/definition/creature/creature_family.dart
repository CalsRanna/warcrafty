import 'package:warcrafty/src/internal/field.dart';
import 'package:warcrafty/src/internal/schema.dart';
import 'package:warcrafty/src/internal/locale_field.dart';

/// CreatureFamily 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
final creatureFamily = DbcSchema(
  name: 'CreatureFamily',
  format: 'nfifiiiiiissssssssssssssssss',
  fields: [
    const Field(index: 0, name: 'ID', description: 'ID', type: FieldType.id),
    const Field(index: 1, name: 'MinScale', description: 'MinScale', type: FieldType.float),
    const Field(index: 2, name: 'MinScaleLevel', description: 'MinScaleLevel', type: FieldType.int32),
    const Field(index: 3, name: 'MaxScale', description: 'MaxScale', type: FieldType.float),
    const Field(index: 4, name: 'MaxScaleLevel', description: 'MaxScaleLevel', type: FieldType.int32),
    const Field(index: 5, name: 'SkillLine0', description: 'SkillLine 0', type: FieldType.int32),
    const Field(index: 6, name: 'SkillLine1', description: 'SkillLine 1', type: FieldType.int32),
    const Field(index: 7, name: 'PetFoodMask', description: 'PetFoodMask', type: FieldType.int32),
    const Field(index: 8, name: 'PetTalentType', description: 'PetTalentType', type: FieldType.int32),
    const Field(index: 9, name: 'CategoryEnumID', description: 'CategoryEnumID', type: FieldType.int32),
    ...createLocaleFieldsWithFlag(10, 'Name_lang', 'Name_lang'),
    const Field(index: 27, name: 'IconFile', description: 'IconFile', type: FieldType.string),
  ],
);
