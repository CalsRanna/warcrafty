import 'package:warcrafty/src/definition/base/field_definition.dart';
import 'package:warcrafty/src/definition/base/structure_definition.dart';
import 'package:warcrafty/src/core/field_format.dart';

/// NPCSounds 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
const nPCSounds = DbcStructureDefinition(
  name: 'NPCSounds',
  format: 'niiii',
  fields: [
    FieldDefinition(index: 0, name: 'ID', description: 'ID', format: DbcFieldFormat.indexField),
    FieldDefinition(index: 1, name: 'SoundID0', description: 'SoundID 0', format: DbcFieldFormat.intType),
    FieldDefinition(index: 2, name: 'SoundID1', description: 'SoundID 1', format: DbcFieldFormat.intType),
    FieldDefinition(index: 3, name: 'SoundID2', description: 'SoundID 2', format: DbcFieldFormat.intType),
    FieldDefinition(index: 4, name: 'SoundID3', description: 'SoundID 3', format: DbcFieldFormat.intType),
  ],
);
