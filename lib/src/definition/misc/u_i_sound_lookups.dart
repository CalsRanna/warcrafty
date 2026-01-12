import 'package:warcrafty/src/core/field_definition.dart';
import 'package:warcrafty/src/core/structure_definition.dart';
import 'package:warcrafty/src/core/field_format.dart';

/// UISoundLookups 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
const uISoundLookups = DbcStructureDefinition(
  name: 'UISoundLookups',
  format: 'nis',
  fields: [
    FieldDefinition(index: 0, name: 'ID', description: 'ID', format: DbcFieldFormat.indexField),
    FieldDefinition(index: 1, name: 'SoundID', description: 'SoundID', format: DbcFieldFormat.intType),
    FieldDefinition(index: 2, name: 'SoundName', description: 'SoundName', format: DbcFieldFormat.string),
  ],
);
