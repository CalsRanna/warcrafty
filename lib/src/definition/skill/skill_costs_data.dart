import 'package:warcrafty/src/core/field_definition.dart';
import 'package:warcrafty/src/core/structure_definition.dart';
import 'package:warcrafty/src/core/field_format.dart';

/// SkillCostsData 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
const skillCostsData = DbcStructureDefinition(
  name: 'SkillCostsData',
  format: 'niiii',
  fields: [
    FieldDefinition(index: 0, name: 'ID', description: 'ID', format: DbcFieldFormat.indexField),
    FieldDefinition(index: 1, name: 'SkillCostsID', description: 'SkillCostsID', format: DbcFieldFormat.intType),
    FieldDefinition(index: 2, name: 'Cost0', description: 'Cost 0', format: DbcFieldFormat.intType),
    FieldDefinition(index: 3, name: 'Cost1', description: 'Cost 1', format: DbcFieldFormat.intType),
    FieldDefinition(index: 4, name: 'Cost2', description: 'Cost 2', format: DbcFieldFormat.intType),
  ],
);
