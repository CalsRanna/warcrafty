import 'package:warcrafty/src/definition/base/field_definition.dart';
import 'package:warcrafty/src/definition/base/structure_definition.dart';
import 'package:warcrafty/src/core/field_format.dart';
import 'package:warcrafty/src/definition/common/locale_fields.dart';

/// AreaPOI 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
final areaPOI = DbcStructureDefinition(
  name: 'AreaPOI',
  format: 'niiiiiiiiiiifffiiissssssssssssssssssssssssssssssssssii',
  fields: [
    const FieldDefinition(index: 0, name: 'ID', description: 'ID', format: DbcFieldFormat.indexField),
    const FieldDefinition(index: 1, name: 'Importance', description: 'Importance', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 2, name: 'Icon0', description: 'Icon 0', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 3, name: 'Icon1', description: 'Icon 1', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 4, name: 'Icon2', description: 'Icon 2', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 5, name: 'Icon3', description: 'Icon 3', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 6, name: 'Icon4', description: 'Icon 4', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 7, name: 'Icon5', description: 'Icon 5', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 8, name: 'Icon6', description: 'Icon 6', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 9, name: 'Icon7', description: 'Icon 7', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 10, name: 'Icon8', description: 'Icon 8', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 11, name: 'FactionID', description: 'FactionID', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 12, name: 'Pos0', description: 'Pos 0', format: DbcFieldFormat.float),
    const FieldDefinition(index: 13, name: 'Pos1', description: 'Pos 1', format: DbcFieldFormat.float),
    const FieldDefinition(index: 14, name: 'Pos2', description: 'Pos 2', format: DbcFieldFormat.float),
    const FieldDefinition(index: 15, name: 'ContinentID', description: 'ContinentID', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 16, name: 'Flags', description: 'Flags', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 17, name: 'AreaID', description: 'AreaID', format: DbcFieldFormat.intType),
    ...createLocaleFieldsWithFlag(18, 'Name_lang', 'Name_lang'),
    ...createLocaleFieldsWithFlag(35, 'Description_lang', 'Description_lang'),
    const FieldDefinition(index: 52, name: 'WorldStateID', description: 'WorldStateID', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 53, name: 'WorldMapLink', description: 'WorldMapLink', format: DbcFieldFormat.intType),
  ],
);
