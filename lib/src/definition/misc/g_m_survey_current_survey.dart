import 'package:warcrafty/src/definition/base/field_definition.dart';
import 'package:warcrafty/src/definition/base/structure_definition.dart';
import 'package:warcrafty/src/core/field_format.dart';

/// GMSurveyCurrentSurvey 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
const gMSurveyCurrentSurvey = DbcStructureDefinition(
  name: 'GMSurveyCurrentSurvey',
  format: 'ni',
  fields: [
    FieldDefinition(index: 0, name: 'LANGID', description: 'LANGID', format: DbcFieldFormat.indexField),
    FieldDefinition(index: 1, name: 'GMSURVEY_ID', description: 'GMSURVEY_ID', format: DbcFieldFormat.intType),
  ],
);
