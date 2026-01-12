import 'package:warcrafty/src/definition/base/field_definition.dart';
import 'package:warcrafty/src/definition/base/structure_definition.dart';
import 'package:warcrafty/src/core/field_format.dart';
import 'package:warcrafty/src/definition/common/locale_fields.dart';

/// WorldSafeLocs 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
final worldSafeLocs = DbcStructureDefinition(
  name: 'WorldSafeLocs',
  format: 'nifffsssssssssssssssss',
  fields: [
    const FieldDefinition(index: 0, name: 'ID', description: 'ID', format: DbcFieldFormat.indexField),
    const FieldDefinition(index: 1, name: 'Continent', description: 'Continent', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 2, name: 'Loc0', description: 'Loc 0', format: DbcFieldFormat.float),
    const FieldDefinition(index: 3, name: 'Loc1', description: 'Loc 1', format: DbcFieldFormat.float),
    const FieldDefinition(index: 4, name: 'Loc2', description: 'Loc 2', format: DbcFieldFormat.float),
    ...createLocaleFieldsWithFlag(5, 'AreaName_lang', 'AreaName_lang'),
  ],
);
