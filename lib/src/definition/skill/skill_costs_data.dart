import 'package:warcrafty/src/internal/field.dart';
import 'package:warcrafty/src/internal/schema.dart';

/// SkillCostsData 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
const skillCostsData = DbcSchema(
  name: 'SkillCostsData',
  format: 'niiii',
  fields: [
    Field(index: 0, name: 'ID', description: 'ID', type: FieldType.id),
    Field(index: 1, name: 'SkillCostsID', description: 'SkillCostsID', type: FieldType.int32),
    Field(index: 2, name: 'Cost0', description: 'Cost 0', type: FieldType.int32),
    Field(index: 3, name: 'Cost1', description: 'Cost 1', type: FieldType.int32),
    Field(index: 4, name: 'Cost2', description: 'Cost 2', type: FieldType.int32),
  ],
);
