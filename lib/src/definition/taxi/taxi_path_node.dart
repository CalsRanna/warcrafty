import 'package:warcrafty/src/core/field_definition.dart';
import 'package:warcrafty/src/core/structure_definition.dart';
import 'package:warcrafty/src/core/field_format.dart';

/// TaxiPathNode 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
const taxiPathNode = DbcStructureDefinition(
  name: 'TaxiPathNode',
  format: 'niiifffiiii',
  fields: [
    FieldDefinition(index: 0, name: 'ID', description: 'ID', format: DbcFieldFormat.indexField),
    FieldDefinition(index: 1, name: 'PathID', description: 'PathID', format: DbcFieldFormat.intType),
    FieldDefinition(index: 2, name: 'NodeIndex', description: 'NodeIndex', format: DbcFieldFormat.intType),
    FieldDefinition(index: 3, name: 'ContinentID', description: 'ContinentID', format: DbcFieldFormat.intType),
    FieldDefinition(index: 4, name: 'Loc0', description: 'Loc 0', format: DbcFieldFormat.float),
    FieldDefinition(index: 5, name: 'Loc1', description: 'Loc 1', format: DbcFieldFormat.float),
    FieldDefinition(index: 6, name: 'Loc2', description: 'Loc 2', format: DbcFieldFormat.float),
    FieldDefinition(index: 7, name: 'Flags', description: 'Flags', format: DbcFieldFormat.intType),
    FieldDefinition(index: 8, name: 'Delay', description: 'Delay', format: DbcFieldFormat.intType),
    FieldDefinition(index: 9, name: 'ArrivalEventID', description: 'ArrivalEventID', format: DbcFieldFormat.intType),
    FieldDefinition(index: 10, name: 'DepartureEventID', description: 'DepartureEventID', format: DbcFieldFormat.intType),
  ],
);
