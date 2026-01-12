import 'package:warcrafty/src/definition/base/field_definition.dart';
import 'package:warcrafty/src/definition/base/structure_definition.dart';
import 'package:warcrafty/src/core/field_format.dart';

/// HelmetGeosetVisData 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
const helmetGeosetVisData = DbcStructureDefinition(
  name: 'HelmetGeosetVisData',
  format: 'niiiiiii',
  fields: [
    FieldDefinition(index: 0, name: 'ID', description: 'ID', format: DbcFieldFormat.indexField),
    FieldDefinition(index: 1, name: 'HideGeoset0', description: 'HideGeoset 0', format: DbcFieldFormat.intType),
    FieldDefinition(index: 2, name: 'HideGeoset1', description: 'HideGeoset 1', format: DbcFieldFormat.intType),
    FieldDefinition(index: 3, name: 'HideGeoset2', description: 'HideGeoset 2', format: DbcFieldFormat.intType),
    FieldDefinition(index: 4, name: 'HideGeoset3', description: 'HideGeoset 3', format: DbcFieldFormat.intType),
    FieldDefinition(index: 5, name: 'HideGeoset4', description: 'HideGeoset 4', format: DbcFieldFormat.intType),
    FieldDefinition(index: 6, name: 'HideGeoset5', description: 'HideGeoset 5', format: DbcFieldFormat.intType),
    FieldDefinition(index: 7, name: 'HideGeoset6', description: 'HideGeoset 6', format: DbcFieldFormat.intType),
  ],
);
