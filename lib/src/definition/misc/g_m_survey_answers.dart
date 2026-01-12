import 'package:warcrafty/src/schema/field.dart';
import 'package:warcrafty/src/schema/schema.dart';
import 'package:warcrafty/src/tool/locale_field.dart';

/// GMSurveyAnswers 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
final gMSurveyAnswers = DbcSchema(
  name: 'GMSurveyAnswers',
  format: 'niisssssssssssssssss',
  fields: [
    const Field(index: 0, name: 'ID', description: 'ID', type: FieldType.id),
    const Field(
      index: 1,
      name: 'Sort_Index',
      description: 'Sort_Index',
      type: FieldType.int32,
    ),
    const Field(
      index: 2,
      name: 'GMSurveyQuestionID',
      description: 'GMSurveyQuestionID',
      type: FieldType.int32,
    ),
    ...createLocaleFieldsWithFlag(3, 'Answer_lang', 'Answer_lang'),
  ],
);
