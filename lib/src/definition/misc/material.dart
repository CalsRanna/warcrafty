import 'package:warcrafty/src/definition/base/field_definition.dart';
import 'package:warcrafty/src/definition/base/structure_definition.dart';
import 'package:warcrafty/src/core/field_format.dart';

/// Material 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
const material = DbcStructureDefinition(
  name: 'Material',
  format: 'niiii',
  fields: [
    FieldDefinition(index: 0, name: 'ID', description: 'ID', format: DbcFieldFormat.indexField),
    FieldDefinition(index: 1, name: 'Flags', description: 'Flags', format: DbcFieldFormat.intType),
    FieldDefinition(index: 2, name: 'FoleySoundID', description: 'FoleySoundID', format: DbcFieldFormat.intType),
    FieldDefinition(index: 3, name: 'SheatheSoundID', description: 'SheatheSoundID', format: DbcFieldFormat.intType),
    FieldDefinition(index: 4, name: 'UnsheatheSoundID', description: 'UnsheatheSoundID', format: DbcFieldFormat.intType),
  ],
);
