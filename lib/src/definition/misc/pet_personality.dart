import 'package:warcrafty/src/schema/field.dart';
import 'package:warcrafty/src/schema/schema.dart';
import 'package:warcrafty/src/tools/locale_fields.dart';

/// PetPersonality 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
final petPersonality = DbcSchema(
  name: 'PetPersonality',
  format: 'nsssssssssssssssssiiifff',
  fields: [
    const Field(index: 0, name: 'ID', description: 'ID', type: FieldType.id),
    ...createLocaleFieldsWithFlag(1, 'Name_lang', 'Name_lang'),
    const Field(index: 18, name: 'HappinessThreshold0', description: 'HappinessThreshold 0', type: FieldType.int32),
    const Field(index: 19, name: 'HappinessThreshold1', description: 'HappinessThreshold 1', type: FieldType.int32),
    const Field(index: 20, name: 'HappinessThreshold2', description: 'HappinessThreshold 2', type: FieldType.int32),
    const Field(index: 21, name: 'HappinessDamage0', description: 'HappinessDamage 0', type: FieldType.float),
    const Field(index: 22, name: 'HappinessDamage1', description: 'HappinessDamage 1', type: FieldType.float),
    const Field(index: 23, name: 'HappinessDamage2', description: 'HappinessDamage 2', type: FieldType.float),
  ],
);
