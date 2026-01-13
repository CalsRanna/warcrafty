import 'package:warcrafty/src/internal/field.dart';
import 'package:warcrafty/src/internal/schema.dart';

/// SkillTiers 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
const skillTiers = DbcSchema(
  name: 'SkillTiers',
  format: 'niiiiiiiiiiiiiiiiiiiiiiiiiiiiiiii',
  fields: [
    Field(index: 0, name: 'ID', description: 'ID', type: FieldType.id),
    Field(index: 1, name: 'Cost0', description: 'Cost 0', type: FieldType.int32),
    Field(index: 2, name: 'Cost1', description: 'Cost 1', type: FieldType.int32),
    Field(index: 3, name: 'Cost2', description: 'Cost 2', type: FieldType.int32),
    Field(index: 4, name: 'Cost3', description: 'Cost 3', type: FieldType.int32),
    Field(index: 5, name: 'Cost4', description: 'Cost 4', type: FieldType.int32),
    Field(index: 6, name: 'Cost5', description: 'Cost 5', type: FieldType.int32),
    Field(index: 7, name: 'Cost6', description: 'Cost 6', type: FieldType.int32),
    Field(index: 8, name: 'Cost7', description: 'Cost 7', type: FieldType.int32),
    Field(index: 9, name: 'Cost8', description: 'Cost 8', type: FieldType.int32),
    Field(index: 10, name: 'Cost9', description: 'Cost 9', type: FieldType.int32),
    Field(index: 11, name: 'Cost10', description: 'Cost 10', type: FieldType.int32),
    Field(index: 12, name: 'Cost11', description: 'Cost 11', type: FieldType.int32),
    Field(index: 13, name: 'Cost12', description: 'Cost 12', type: FieldType.int32),
    Field(index: 14, name: 'Cost13', description: 'Cost 13', type: FieldType.int32),
    Field(index: 15, name: 'Cost14', description: 'Cost 14', type: FieldType.int32),
    Field(index: 16, name: 'Cost15', description: 'Cost 15', type: FieldType.int32),
    Field(index: 17, name: 'Value0', description: 'Value 0', type: FieldType.int32),
    Field(index: 18, name: 'Value1', description: 'Value 1', type: FieldType.int32),
    Field(index: 19, name: 'Value2', description: 'Value 2', type: FieldType.int32),
    Field(index: 20, name: 'Value3', description: 'Value 3', type: FieldType.int32),
    Field(index: 21, name: 'Value4', description: 'Value 4', type: FieldType.int32),
    Field(index: 22, name: 'Value5', description: 'Value 5', type: FieldType.int32),
    Field(index: 23, name: 'Value6', description: 'Value 6', type: FieldType.int32),
    Field(index: 24, name: 'Value7', description: 'Value 7', type: FieldType.int32),
    Field(index: 25, name: 'Value8', description: 'Value 8', type: FieldType.int32),
    Field(index: 26, name: 'Value9', description: 'Value 9', type: FieldType.int32),
    Field(index: 27, name: 'Value10', description: 'Value 10', type: FieldType.int32),
    Field(index: 28, name: 'Value11', description: 'Value 11', type: FieldType.int32),
    Field(index: 29, name: 'Value12', description: 'Value 12', type: FieldType.int32),
    Field(index: 30, name: 'Value13', description: 'Value 13', type: FieldType.int32),
    Field(index: 31, name: 'Value14', description: 'Value 14', type: FieldType.int32),
    Field(index: 32, name: 'Value15', description: 'Value 15', type: FieldType.int32),
  ],
);
