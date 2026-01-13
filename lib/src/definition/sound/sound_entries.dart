import 'package:warcrafty/src/internal/field.dart';
import 'package:warcrafty/src/internal/schema.dart';

/// SoundEntries 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
const soundEntries = DbcSchema(
  name: 'SoundEntries',
  format: 'nisssssssssssiiiiiiiiiisfiffii',
  fields: [
    Field(index: 0, name: 'ID', description: 'ID', type: FieldType.id),
    Field(index: 1, name: 'SoundType', description: 'SoundType', type: FieldType.int32),
    Field(index: 2, name: 'Name', description: 'Name', type: FieldType.string),
    Field(index: 3, name: 'File0', description: 'File 0', type: FieldType.string),
    Field(index: 4, name: 'File1', description: 'File 1', type: FieldType.string),
    Field(index: 5, name: 'File2', description: 'File 2', type: FieldType.string),
    Field(index: 6, name: 'File3', description: 'File 3', type: FieldType.string),
    Field(index: 7, name: 'File4', description: 'File 4', type: FieldType.string),
    Field(index: 8, name: 'File5', description: 'File 5', type: FieldType.string),
    Field(index: 9, name: 'File6', description: 'File 6', type: FieldType.string),
    Field(index: 10, name: 'File7', description: 'File 7', type: FieldType.string),
    Field(index: 11, name: 'File8', description: 'File 8', type: FieldType.string),
    Field(index: 12, name: 'File9', description: 'File 9', type: FieldType.string),
    Field(index: 13, name: 'Freq0', description: 'Freq 0', type: FieldType.int32),
    Field(index: 14, name: 'Freq1', description: 'Freq 1', type: FieldType.int32),
    Field(index: 15, name: 'Freq2', description: 'Freq 2', type: FieldType.int32),
    Field(index: 16, name: 'Freq3', description: 'Freq 3', type: FieldType.int32),
    Field(index: 17, name: 'Freq4', description: 'Freq 4', type: FieldType.int32),
    Field(index: 18, name: 'Freq5', description: 'Freq 5', type: FieldType.int32),
    Field(index: 19, name: 'Freq6', description: 'Freq 6', type: FieldType.int32),
    Field(index: 20, name: 'Freq7', description: 'Freq 7', type: FieldType.int32),
    Field(index: 21, name: 'Freq8', description: 'Freq 8', type: FieldType.int32),
    Field(index: 22, name: 'Freq9', description: 'Freq 9', type: FieldType.int32),
    Field(index: 23, name: 'DirectoryBase', description: 'DirectoryBase', type: FieldType.string),
    Field(index: 24, name: 'VolumeFloat', description: 'VolumeFloat', type: FieldType.float),
    Field(index: 25, name: 'Flags', description: 'Flags', type: FieldType.int32),
    Field(index: 26, name: 'MinDistance', description: 'MinDistance', type: FieldType.float),
    Field(index: 27, name: 'DistanceCutoff', description: 'DistanceCutoff', type: FieldType.float),
    Field(index: 28, name: 'EAXDef', description: 'EAXDef', type: FieldType.int32),
    Field(index: 29, name: 'SoundEntriesAdvancedID', description: 'SoundEntriesAdvancedID', type: FieldType.int32),
  ],
);
