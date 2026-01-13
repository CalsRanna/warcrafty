import 'package:warcrafty/src/internal/field.dart';
import 'package:warcrafty/src/internal/schema.dart';

/// GMSurveyCurrentSurvey 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
const gMSurveyCurrentSurvey = DbcSchema(
  name: 'GMSurveyCurrentSurvey',
  format: 'ni',
  fields: [
    Field(index: 0, name: 'LANGID', description: 'LANGID', type: FieldType.id),
    Field(index: 1, name: 'GMSURVEY_ID', description: 'GMSURVEY_ID', type: FieldType.int32),
  ],
);
