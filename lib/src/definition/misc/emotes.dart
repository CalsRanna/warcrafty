import 'package:warcrafty/src/core/field_definition.dart';
import 'package:warcrafty/src/core/structure_definition.dart';
import 'package:warcrafty/src/core/field_format.dart';

/// Emotes 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
const emotes = DbcStructureDefinition(
  name: 'Emotes',
  format: 'nsiiiii',
  fields: [
    FieldDefinition(index: 0, name: 'ID', description: 'ID', format: DbcFieldFormat.indexField),
    FieldDefinition(index: 1, name: 'EmoteSlashCommand', description: 'EmoteSlashCommand', format: DbcFieldFormat.string),
    FieldDefinition(index: 2, name: 'AnimID', description: 'AnimID', format: DbcFieldFormat.intType),
    FieldDefinition(index: 3, name: 'EmoteFlags', description: 'EmoteFlags', format: DbcFieldFormat.intType),
    FieldDefinition(index: 4, name: 'EmoteSpecProc', description: 'EmoteSpecProc', format: DbcFieldFormat.intType),
    FieldDefinition(index: 5, name: 'EmoteSpecProcParam', description: 'EmoteSpecProcParam', format: DbcFieldFormat.intType),
    FieldDefinition(index: 6, name: 'EventSoundID', description: 'EventSoundID', format: DbcFieldFormat.intType),
  ],
);
