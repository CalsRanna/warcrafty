import 'package:warcrafty/src/internal/field.dart';
import 'package:warcrafty/src/internal/schema.dart';
import 'package:warcrafty/src/internal/locale_field.dart';

/// GMSurveyQuestions 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
final gMSurveyQuestions = DbcSchema(
  name: 'GMSurveyQuestions',
  format: 'nsssssssssssssssss',
  fields: [
    const Field(index: 0, name: 'ID', description: 'ID', type: FieldType.id),
    ...createLocaleFieldsWithFlag(1, 'Question_lang', 'Question_lang'),
  ],
);
