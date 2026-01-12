import 'package:warcrafty/src/core/field_definition.dart';
import 'package:warcrafty/src/core/structure_definition.dart';
import 'package:warcrafty/src/core/field_format.dart';

/// CharBaseInfo 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
const charBaseInfo = DbcStructureDefinition(
  name: 'CharBaseInfo',
  format: 'bb',
  fields: [
    FieldDefinition(index: 0, name: 'RaceID', description: 'RaceID', format: DbcFieldFormat.byte),
    FieldDefinition(index: 1, name: 'ClassID', description: 'ClassID', format: DbcFieldFormat.byte),
  ],
);
