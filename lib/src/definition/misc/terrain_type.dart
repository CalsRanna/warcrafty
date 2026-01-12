import 'package:warcrafty/src/definition/base/field_definition.dart';
import 'package:warcrafty/src/definition/base/structure_definition.dart';
import 'package:warcrafty/src/core/field_format.dart';

/// TerrainType 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
const terrainType = DbcStructureDefinition(
  name: 'TerrainType',
  format: 'isiiii',
  fields: [
    FieldDefinition(index: 0, name: 'TerrainID', description: 'TerrainID', format: DbcFieldFormat.intType),
    FieldDefinition(index: 1, name: 'TerrainDesc', description: 'TerrainDesc', format: DbcFieldFormat.string),
    FieldDefinition(index: 2, name: 'FootstepSprayRun', description: 'FootstepSprayRun', format: DbcFieldFormat.intType),
    FieldDefinition(index: 3, name: 'FootstepSprayWalk', description: 'FootstepSprayWalk', format: DbcFieldFormat.intType),
    FieldDefinition(index: 4, name: 'SoundID', description: 'SoundID', format: DbcFieldFormat.intType),
    FieldDefinition(index: 5, name: 'Flags', description: 'Flags', format: DbcFieldFormat.intType),
  ],
);
