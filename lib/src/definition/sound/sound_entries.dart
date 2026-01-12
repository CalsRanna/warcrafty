import 'package:warcrafty/src/core/field_definition.dart';
import 'package:warcrafty/src/core/structure_definition.dart';
import 'package:warcrafty/src/core/field_format.dart';

/// SoundEntries 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
const soundEntries = DbcStructureDefinition(
  name: 'SoundEntries',
  format: 'nisssssssssssiiiiiiiiiisfiffii',
  fields: [
    FieldDefinition(index: 0, name: 'ID', description: 'ID', format: DbcFieldFormat.indexField),
    FieldDefinition(index: 1, name: 'SoundType', description: 'SoundType', format: DbcFieldFormat.intType),
    FieldDefinition(index: 2, name: 'Name', description: 'Name', format: DbcFieldFormat.string),
    FieldDefinition(index: 3, name: 'File0', description: 'File 0', format: DbcFieldFormat.string),
    FieldDefinition(index: 4, name: 'File1', description: 'File 1', format: DbcFieldFormat.string),
    FieldDefinition(index: 5, name: 'File2', description: 'File 2', format: DbcFieldFormat.string),
    FieldDefinition(index: 6, name: 'File3', description: 'File 3', format: DbcFieldFormat.string),
    FieldDefinition(index: 7, name: 'File4', description: 'File 4', format: DbcFieldFormat.string),
    FieldDefinition(index: 8, name: 'File5', description: 'File 5', format: DbcFieldFormat.string),
    FieldDefinition(index: 9, name: 'File6', description: 'File 6', format: DbcFieldFormat.string),
    FieldDefinition(index: 10, name: 'File7', description: 'File 7', format: DbcFieldFormat.string),
    FieldDefinition(index: 11, name: 'File8', description: 'File 8', format: DbcFieldFormat.string),
    FieldDefinition(index: 12, name: 'File9', description: 'File 9', format: DbcFieldFormat.string),
    FieldDefinition(index: 13, name: 'Freq0', description: 'Freq 0', format: DbcFieldFormat.intType),
    FieldDefinition(index: 14, name: 'Freq1', description: 'Freq 1', format: DbcFieldFormat.intType),
    FieldDefinition(index: 15, name: 'Freq2', description: 'Freq 2', format: DbcFieldFormat.intType),
    FieldDefinition(index: 16, name: 'Freq3', description: 'Freq 3', format: DbcFieldFormat.intType),
    FieldDefinition(index: 17, name: 'Freq4', description: 'Freq 4', format: DbcFieldFormat.intType),
    FieldDefinition(index: 18, name: 'Freq5', description: 'Freq 5', format: DbcFieldFormat.intType),
    FieldDefinition(index: 19, name: 'Freq6', description: 'Freq 6', format: DbcFieldFormat.intType),
    FieldDefinition(index: 20, name: 'Freq7', description: 'Freq 7', format: DbcFieldFormat.intType),
    FieldDefinition(index: 21, name: 'Freq8', description: 'Freq 8', format: DbcFieldFormat.intType),
    FieldDefinition(index: 22, name: 'Freq9', description: 'Freq 9', format: DbcFieldFormat.intType),
    FieldDefinition(index: 23, name: 'DirectoryBase', description: 'DirectoryBase', format: DbcFieldFormat.string),
    FieldDefinition(index: 24, name: 'VolumeFloat', description: 'VolumeFloat', format: DbcFieldFormat.float),
    FieldDefinition(index: 25, name: 'Flags', description: 'Flags', format: DbcFieldFormat.intType),
    FieldDefinition(index: 26, name: 'MinDistance', description: 'MinDistance', format: DbcFieldFormat.float),
    FieldDefinition(index: 27, name: 'DistanceCutoff', description: 'DistanceCutoff', format: DbcFieldFormat.float),
    FieldDefinition(index: 28, name: 'EAXDef', description: 'EAXDef', format: DbcFieldFormat.intType),
    FieldDefinition(index: 29, name: 'SoundEntriesAdvancedID', description: 'SoundEntriesAdvancedID', format: DbcFieldFormat.intType),
  ],
);
