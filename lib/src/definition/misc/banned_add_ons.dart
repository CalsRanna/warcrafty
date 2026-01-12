import 'package:warcrafty/src/definition/base/field_definition.dart';
import 'package:warcrafty/src/definition/base/structure_definition.dart';
import 'package:warcrafty/src/core/field_format.dart';

/// BannedAddOns 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
const bannedAddOns = DbcStructureDefinition(
  name: 'BannedAddOns',
  format: 'niiiiiiiiii',
  fields: [
    FieldDefinition(index: 0, name: 'ID', description: 'ID', format: DbcFieldFormat.indexField),
    FieldDefinition(index: 1, name: 'NameMD50', description: 'NameMD5 0', format: DbcFieldFormat.intType),
    FieldDefinition(index: 2, name: 'NameMD51', description: 'NameMD5 1', format: DbcFieldFormat.intType),
    FieldDefinition(index: 3, name: 'NameMD52', description: 'NameMD5 2', format: DbcFieldFormat.intType),
    FieldDefinition(index: 4, name: 'NameMD53', description: 'NameMD5 3', format: DbcFieldFormat.intType),
    FieldDefinition(index: 5, name: 'VersionMD50', description: 'VersionMD5 0', format: DbcFieldFormat.intType),
    FieldDefinition(index: 6, name: 'VersionMD51', description: 'VersionMD5 1', format: DbcFieldFormat.intType),
    FieldDefinition(index: 7, name: 'VersionMD52', description: 'VersionMD5 2', format: DbcFieldFormat.intType),
    FieldDefinition(index: 8, name: 'VersionMD53', description: 'VersionMD5 3', format: DbcFieldFormat.intType),
    FieldDefinition(index: 9, name: 'LastModified', description: 'LastModified', format: DbcFieldFormat.intType),
    FieldDefinition(index: 10, name: 'Flags', description: 'Flags', format: DbcFieldFormat.intType),
  ],
);
