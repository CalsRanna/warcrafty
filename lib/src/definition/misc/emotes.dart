import 'package:warcrafty/src/internal/field.dart';
import 'package:warcrafty/src/internal/schema.dart';

/// Emotes 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
const emotes = DbcSchema(
  name: 'Emotes',
  format: 'nsiiiii',
  fields: [
    Field(index: 0, name: 'ID', description: 'ID', type: FieldType.id),
    Field(index: 1, name: 'EmoteSlashCommand', description: 'EmoteSlashCommand', type: FieldType.string),
    Field(index: 2, name: 'AnimID', description: 'AnimID', type: FieldType.int32),
    Field(index: 3, name: 'EmoteFlags', description: 'EmoteFlags', type: FieldType.int32),
    Field(index: 4, name: 'EmoteSpecProc', description: 'EmoteSpecProc', type: FieldType.int32),
    Field(index: 5, name: 'EmoteSpecProcParam', description: 'EmoteSpecProcParam', type: FieldType.int32),
    Field(index: 6, name: 'EventSoundID', description: 'EventSoundID', type: FieldType.int32),
  ],
);
