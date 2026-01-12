import 'package:warcrafty/src/definition/base/field_definition.dart';
import 'package:warcrafty/src/definition/base/structure_definition.dart';
import 'package:warcrafty/src/core/field_format.dart';

/// SoundWaterType 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
const soundWaterType = DbcStructureDefinition(
  name: 'SoundWaterType',
  format: 'niii',
  fields: [
    FieldDefinition(index: 0, name: 'ID', description: 'ID', format: DbcFieldFormat.indexField),
    FieldDefinition(index: 1, name: 'SoundType', description: 'SoundType', format: DbcFieldFormat.intType),
    FieldDefinition(index: 2, name: 'SoundSubtype', description: 'SoundSubtype', format: DbcFieldFormat.intType),
    FieldDefinition(index: 3, name: 'SoundID', description: 'SoundID', format: DbcFieldFormat.intType),
  ],
);
