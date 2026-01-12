import 'package:warcrafty/src/core/field_definition.dart';
import 'package:warcrafty/src/core/structure_definition.dart';
import 'package:warcrafty/src/core/field_format.dart';

/// FileData 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
const fileData = DbcStructureDefinition(
  name: 'FileData',
  format: 'nss',
  fields: [
    FieldDefinition(index: 0, name: 'ID', description: 'ID', format: DbcFieldFormat.indexField),
    FieldDefinition(index: 1, name: 'Filename', description: 'Filename', format: DbcFieldFormat.string),
    FieldDefinition(index: 2, name: 'Filepath', description: 'Filepath', format: DbcFieldFormat.string),
  ],
);
