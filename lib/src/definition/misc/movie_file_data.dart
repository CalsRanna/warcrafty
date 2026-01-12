import 'package:warcrafty/src/definition/base/field_definition.dart';
import 'package:warcrafty/src/definition/base/structure_definition.dart';
import 'package:warcrafty/src/core/field_format.dart';

/// MovieFileData 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
const movieFileData = DbcStructureDefinition(
  name: 'MovieFileData',
  format: 'ni',
  fields: [
    FieldDefinition(index: 0, name: 'FileDataID', description: 'FileDataID', format: DbcFieldFormat.indexField),
    FieldDefinition(index: 1, name: 'Resolution', description: 'Resolution', format: DbcFieldFormat.intType),
  ],
);
