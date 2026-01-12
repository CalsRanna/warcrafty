import 'package:warcrafty/src/core/field_definition.dart';
import 'package:warcrafty/src/core/structure_definition.dart';
import 'package:warcrafty/src/core/field_format.dart';
import 'package:warcrafty/src/core/locale_fields.dart';

/// LFGDungeons 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
final lFGDungeons = DbcStructureDefinition(
  name: 'LFGDungeons',
  format: 'nsssssssssssssssssiiiiiiiiiisiiisssssssssssssssss',
  fields: [
    const FieldDefinition(index: 0, name: 'ID', description: 'ID', format: DbcFieldFormat.indexField),
    ...createLocaleFieldsWithFlag(1, 'Name_lang', 'Name_lang'),
    const FieldDefinition(index: 18, name: 'MinLevel', description: 'MinLevel', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 19, name: 'MaxLevel', description: 'MaxLevel', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 20, name: 'Target_level', description: 'Target_level', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 21, name: 'Target_level_min', description: 'Target_level_min', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 22, name: 'Target_level_max', description: 'Target_level_max', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 23, name: 'MapID', description: 'MapID', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 24, name: 'Difficulty', description: 'Difficulty', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 25, name: 'Flags', description: 'Flags', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 26, name: 'TypeID', description: 'TypeID', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 27, name: 'Faction', description: 'Faction', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 28, name: 'TextureFilename', description: 'TextureFilename', format: DbcFieldFormat.string),
    const FieldDefinition(index: 29, name: 'ExpansionLevel', description: 'ExpansionLevel', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 30, name: 'Order_index', description: 'Order_index', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 31, name: 'Group_ID', description: 'Group_ID', format: DbcFieldFormat.intType),
    ...createLocaleFieldsWithFlag(32, 'Description_lang', 'Description_lang'),
  ],
);
