import 'package:warcrafty/src/schema/field.dart';
import 'package:warcrafty/src/schema/schema.dart';

/// ZoneIntroMusicTable 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
const zoneIntroMusicTable = DbcSchema(
  name: 'ZoneIntroMusicTable',
  format: 'nsiii',
  fields: [
    Field(index: 0, name: 'ID', description: 'ID', type: FieldType.id),
    Field(index: 1, name: 'Name', description: 'Name', type: FieldType.string),
    Field(index: 2, name: 'SoundID', description: 'SoundID', type: FieldType.int32),
    Field(index: 3, name: 'Priority', description: 'Priority', type: FieldType.int32),
    Field(index: 4, name: 'MinDelayMinutes', description: 'MinDelayMinutes', type: FieldType.int32),
  ],
);
