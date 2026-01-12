import 'package:warcrafty/src/core/field_definition.dart';
import 'package:warcrafty/src/core/structure_definition.dart';
import 'package:warcrafty/src/core/field_format.dart';

/// EnvironmentalDamage 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
const environmentalDamage = DbcStructureDefinition(
  name: 'EnvironmentalDamage',
  format: 'nii',
  fields: [
    FieldDefinition(index: 0, name: 'ID', description: 'ID', format: DbcFieldFormat.indexField),
    FieldDefinition(index: 1, name: 'EnumID', description: 'EnumID', format: DbcFieldFormat.intType),
    FieldDefinition(index: 2, name: 'VisualkitID', description: 'VisualkitID', format: DbcFieldFormat.intType),
  ],
);
