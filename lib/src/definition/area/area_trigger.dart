import 'package:warcrafty/src/definition/base/field_definition.dart';
import 'package:warcrafty/src/definition/base/structure_definition.dart';
import 'package:warcrafty/src/core/field_format.dart';

/// AreaTrigger 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
const areaTrigger = DbcStructureDefinition(
  name: 'AreaTrigger',
  format: 'niffffffff',
  fields: [
    FieldDefinition(index: 0, name: 'ID', description: 'ID', format: DbcFieldFormat.indexField),
    FieldDefinition(index: 1, name: 'ContinentID', description: 'ContinentID', format: DbcFieldFormat.intType),
    FieldDefinition(index: 2, name: 'Pos0', description: 'Pos 0', format: DbcFieldFormat.float),
    FieldDefinition(index: 3, name: 'Pos1', description: 'Pos 1', format: DbcFieldFormat.float),
    FieldDefinition(index: 4, name: 'Pos2', description: 'Pos 2', format: DbcFieldFormat.float),
    FieldDefinition(index: 5, name: 'Radius', description: 'Radius', format: DbcFieldFormat.float),
    FieldDefinition(index: 6, name: 'Box_length', description: 'Box_length', format: DbcFieldFormat.float),
    FieldDefinition(index: 7, name: 'Box_width', description: 'Box_width', format: DbcFieldFormat.float),
    FieldDefinition(index: 8, name: 'Box_height', description: 'Box_height', format: DbcFieldFormat.float),
    FieldDefinition(index: 9, name: 'Box_yaw', description: 'Box_yaw', format: DbcFieldFormat.float),
  ],
);
