import 'package:warcrafty/src/definition/base/field_definition.dart';
import 'package:warcrafty/src/definition/base/structure_definition.dart';
import 'package:warcrafty/src/core/field_format.dart';

/// TalentTab 结构定义
const talentTab = DbcStructureDefinition(
  name: 'TalentTab',
  format: 'nxxxxxxxxxxxxxxxxxxxiiix',
  fields: [
    FieldDefinition(index: 0, name: 'ID', description: '天赋页 ID', format: DbcFieldFormat.intType),
    FieldDefinition(index: 1, name: 'Name', description: '名称', format: DbcFieldFormat.na),
    FieldDefinition(index: 2, name: 'Unknown1', description: '未知1', format: DbcFieldFormat.intType),
    FieldDefinition(index: 3, name: 'Unknown2', description: '未知2', format: DbcFieldFormat.intType),
    FieldDefinition(index: 4, name: 'Unknown3', description: '未知3', format: DbcFieldFormat.intType),
    FieldDefinition(index: 5, name: 'SpellID', description: '法术 ID', format: DbcFieldFormat.intType),
    FieldDefinition(index: 6, name: 'BackgroundFile', description: '背景文件', format: DbcFieldFormat.na),
    FieldDefinition(index: 7, name: 'Unknown4', description: '未知4', format: DbcFieldFormat.intType),
  ],
);
