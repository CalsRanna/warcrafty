import 'package:warcrafty/src/definition/base/field_definition.dart';
import 'package:warcrafty/src/definition/base/structure_definition.dart';
import 'package:warcrafty/src/core/field_format.dart';
import 'package:warcrafty/src/definition/common/locale_fields.dart';

/// GMSurveyAnswers 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
final gMSurveyAnswers = DbcStructureDefinition(
  name: 'GMSurveyAnswers',
  format: 'niisssssssssssssssss',
  fields: [
    const FieldDefinition(index: 0, name: 'ID', description: 'ID', format: DbcFieldFormat.indexField),
    const FieldDefinition(index: 1, name: 'Sort_Index', description: 'Sort_Index', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 2, name: 'GMSurveyQuestionID', description: 'GMSurveyQuestionID', format: DbcFieldFormat.intType),
    ...createLocaleFieldsWithFlag(3, 'Answer_lang', 'Answer_lang'),
  ],
);
