import 'package:warcrafty/src/definition/base/field_definition.dart';
import 'package:warcrafty/src/definition/base/structure_definition.dart';
import 'package:warcrafty/src/core/field_format.dart';
import 'package:warcrafty/src/definition/common/locale_fields.dart';

/// DungeonEncounter 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
final dungeonEncounter = DbcStructureDefinition(
  name: 'DungeonEncounter',
  format: 'niiiisssssssssssssssssi',
  fields: [
    const FieldDefinition(index: 0, name: 'ID', description: 'ID', format: DbcFieldFormat.indexField),
    const FieldDefinition(index: 1, name: 'MapID', description: 'MapID', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 2, name: 'Difficulty', description: 'Difficulty', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 3, name: 'OrderIndex', description: 'OrderIndex', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 4, name: 'Bit', description: 'Bit', format: DbcFieldFormat.intType),
    ...createLocaleFieldsWithFlag(5, 'Name_lang', 'Name_lang'),
    const FieldDefinition(index: 22, name: 'SpellIconID', description: 'SpellIconID', format: DbcFieldFormat.intType),
  ],
);
