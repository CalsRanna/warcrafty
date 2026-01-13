import 'package:warcrafty/src/internal/field.dart';
import 'package:warcrafty/src/internal/schema.dart';

/// GMSurveySurveys 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
const gMSurveySurveys = DbcSchema(
  name: 'GMSurveySurveys',
  format: 'niiiiiiiiii',
  fields: [
    Field(index: 0, name: 'ID', description: 'ID', type: FieldType.id),
    Field(index: 1, name: 'Q0', description: 'Q 0', type: FieldType.int32),
    Field(index: 2, name: 'Q1', description: 'Q 1', type: FieldType.int32),
    Field(index: 3, name: 'Q2', description: 'Q 2', type: FieldType.int32),
    Field(index: 4, name: 'Q3', description: 'Q 3', type: FieldType.int32),
    Field(index: 5, name: 'Q4', description: 'Q 4', type: FieldType.int32),
    Field(index: 6, name: 'Q5', description: 'Q 5', type: FieldType.int32),
    Field(index: 7, name: 'Q6', description: 'Q 6', type: FieldType.int32),
    Field(index: 8, name: 'Q7', description: 'Q 7', type: FieldType.int32),
    Field(index: 9, name: 'Q8', description: 'Q 8', type: FieldType.int32),
    Field(index: 10, name: 'Q9', description: 'Q 9', type: FieldType.int32),
  ],
);
