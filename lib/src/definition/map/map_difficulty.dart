import 'package:warcrafty/src/schema/field.dart';
import 'package:warcrafty/src/schema/schema.dart';
import 'package:warcrafty/src/tools/locale_fields.dart';

/// MapDifficulty 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
final mapDifficulty = DbcSchema(
  name: 'MapDifficulty',
  format: 'niisssssssssssssssssiis',
  fields: [
    const Field(index: 0, name: 'ID', description: 'ID', type: FieldType.id),
    const Field(index: 1, name: 'MapID', description: 'MapID', type: FieldType.int32),
    const Field(index: 2, name: 'Difficulty', description: 'Difficulty', type: FieldType.int32),
    ...createLocaleFieldsWithFlag(3, 'Message_lang', 'Message_lang'),
    const Field(index: 20, name: 'RaidDuration', description: 'RaidDuration', type: FieldType.int32),
    const Field(index: 21, name: 'MaxPlayers', description: 'MaxPlayers', type: FieldType.int32),
    const Field(index: 22, name: 'Difficultystring', description: 'Difficultystring', type: FieldType.string),
  ],
);
