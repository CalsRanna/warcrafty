import 'package:warcrafty/src/internal/field.dart';
import 'package:warcrafty/src/internal/schema.dart';

/// ZoneMusic 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
const zoneMusic = DbcSchema(
  name: 'ZoneMusic',
  format: 'nsiiiiii',
  fields: [
    Field(index: 0, name: 'ID', description: 'ID', type: FieldType.id),
    Field(index: 1, name: 'SetName', description: 'SetName', type: FieldType.string),
    Field(index: 2, name: 'SilenceIntervalMin0', description: 'SilenceIntervalMin 0', type: FieldType.int32),
    Field(index: 3, name: 'SilenceIntervalMin1', description: 'SilenceIntervalMin 1', type: FieldType.int32),
    Field(index: 4, name: 'SilenceIntervalMax0', description: 'SilenceIntervalMax 0', type: FieldType.int32),
    Field(index: 5, name: 'SilenceIntervalMax1', description: 'SilenceIntervalMax 1', type: FieldType.int32),
    Field(index: 6, name: 'Sounds0', description: 'Sounds 0', type: FieldType.int32),
    Field(index: 7, name: 'Sounds1', description: 'Sounds 1', type: FieldType.int32),
  ],
);
