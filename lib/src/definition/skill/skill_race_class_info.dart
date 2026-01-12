import 'package:warcrafty/src/schema/field.dart';
import 'package:warcrafty/src/schema/schema.dart';

/// SkillRaceClassInfo 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
const skillRaceClassInfo = DbcSchema(
  name: 'SkillRaceClassInfo',
  format: 'niiiiiii',
  fields: [
    Field(index: 0, name: 'ID', description: 'ID', type: FieldType.id),
    Field(index: 1, name: 'SkillID', description: 'SkillID', type: FieldType.int32),
    Field(index: 2, name: 'RaceMask', description: 'RaceMask', type: FieldType.int32),
    Field(index: 3, name: 'ClassMask', description: 'ClassMask', type: FieldType.int32),
    Field(index: 4, name: 'Flags', description: 'Flags', type: FieldType.int32),
    Field(index: 5, name: 'MinLevel', description: 'MinLevel', type: FieldType.int32),
    Field(index: 6, name: 'SkillTierID', description: 'SkillTierID', type: FieldType.int32),
    Field(index: 7, name: 'SkillCostIndex', description: 'SkillCostIndex', type: FieldType.int32),
  ],
);
