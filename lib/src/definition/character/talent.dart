/// Talent.dbc - 天赋格式
library;

import '../base/field_definition.dart';
import '../base/structure_definition.dart';
import '../../core/field_format.dart';

/// Talent 格式字符串
const String talentFormat = 'niiiiiiiixxxxixxixxixxx';

/// Talent 结构定义
const DbcStructureDefinition talent = DbcStructureDefinition(
  name: 'Talent',
  format: talentFormat,
  fields: [
    FieldDefinition(index: 0, name: 'ID', description: '天赋 ID', format: DbcFieldFormat.intType),
    FieldDefinition(index: 1, name: 'TalentTabID', description: '天赋页 ID', format: DbcFieldFormat.intType),
    FieldDefinition(index: 2, name: 'TierID', description: '层 ID', format: DbcFieldFormat.intType),
    FieldDefinition(index: 3, name: 'ColumnIndex', description: '列索引', format: DbcFieldFormat.intType),
    FieldDefinition(index: 4, name: 'SpellID', description: '法术 ID', format: DbcFieldFormat.intType),
    FieldDefinition(index: 5, name: 'Unknown1', description: '未知1', format: DbcFieldFormat.intType),
    FieldDefinition(index: 6, name: 'Unknown2', description: '未知2', format: DbcFieldFormat.intType),
    FieldDefinition(index: 7, name: 'Unknown3', description: '未知3', format: DbcFieldFormat.intType),
    FieldDefinition(index: 8, name: 'Unknown4', description: '未知4', format: DbcFieldFormat.intType),
    FieldDefinition(index: 9, name: 'Unknown5', description: '未知5', format: DbcFieldFormat.na),
    FieldDefinition(index: 10, name: 'Unknown6', description: '未知6', format: DbcFieldFormat.na),
    FieldDefinition(index: 11, name: 'Unknown7', description: '未知7', format: DbcFieldFormat.na),
    FieldDefinition(index: 12, name: 'Unknown8', description: '未知8', format: DbcFieldFormat.na),
    FieldDefinition(index: 13, name: 'Unknown9', description: '未知9', format: DbcFieldFormat.intType),
    FieldDefinition(index: 14, name: 'Unknown10', description: '未知10', format: DbcFieldFormat.na),
    FieldDefinition(index: 15, name: 'Unknown11', description: '未知11', format: DbcFieldFormat.intType),
  ],
);
