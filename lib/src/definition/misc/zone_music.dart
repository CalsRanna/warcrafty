import 'package:warcrafty/src/core/field_definition.dart';
import 'package:warcrafty/src/core/structure_definition.dart';
import 'package:warcrafty/src/core/field_format.dart';

/// ZoneMusic 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
const zoneMusic = DbcStructureDefinition(
  name: 'ZoneMusic',
  format: 'nsiiiiii',
  fields: [
    FieldDefinition(index: 0, name: 'ID', description: 'ID', format: DbcFieldFormat.indexField),
    FieldDefinition(index: 1, name: 'SetName', description: 'SetName', format: DbcFieldFormat.string),
    FieldDefinition(index: 2, name: 'SilenceIntervalMin0', description: 'SilenceIntervalMin 0', format: DbcFieldFormat.intType),
    FieldDefinition(index: 3, name: 'SilenceIntervalMin1', description: 'SilenceIntervalMin 1', format: DbcFieldFormat.intType),
    FieldDefinition(index: 4, name: 'SilenceIntervalMax0', description: 'SilenceIntervalMax 0', format: DbcFieldFormat.intType),
    FieldDefinition(index: 5, name: 'SilenceIntervalMax1', description: 'SilenceIntervalMax 1', format: DbcFieldFormat.intType),
    FieldDefinition(index: 6, name: 'Sounds0', description: 'Sounds 0', format: DbcFieldFormat.intType),
    FieldDefinition(index: 7, name: 'Sounds1', description: 'Sounds 1', format: DbcFieldFormat.intType),
  ],
);
