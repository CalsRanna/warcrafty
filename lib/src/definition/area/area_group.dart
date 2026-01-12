import 'package:warcrafty/src/definition/base/field_definition.dart';
import 'package:warcrafty/src/definition/base/structure_definition.dart';
import 'package:warcrafty/src/core/field_format.dart';

/// AreaGroup 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
const areaGroup = DbcStructureDefinition(
  name: 'AreaGroup',
  format: 'niiiiiii',
  fields: [
    FieldDefinition(index: 0, name: 'ID', description: 'ID', format: DbcFieldFormat.indexField),
    FieldDefinition(index: 1, name: 'AreaID0', description: 'AreaID 0', format: DbcFieldFormat.intType),
    FieldDefinition(index: 2, name: 'AreaID1', description: 'AreaID 1', format: DbcFieldFormat.intType),
    FieldDefinition(index: 3, name: 'AreaID2', description: 'AreaID 2', format: DbcFieldFormat.intType),
    FieldDefinition(index: 4, name: 'AreaID3', description: 'AreaID 3', format: DbcFieldFormat.intType),
    FieldDefinition(index: 5, name: 'AreaID4', description: 'AreaID 4', format: DbcFieldFormat.intType),
    FieldDefinition(index: 6, name: 'AreaID5', description: 'AreaID 5', format: DbcFieldFormat.intType),
    FieldDefinition(index: 7, name: 'NextAreaID', description: 'NextAreaID', format: DbcFieldFormat.intType),
  ],
);
