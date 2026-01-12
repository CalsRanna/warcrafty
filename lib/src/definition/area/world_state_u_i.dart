import 'package:warcrafty/src/definition/base/field_definition.dart';
import 'package:warcrafty/src/definition/base/structure_definition.dart';
import 'package:warcrafty/src/core/field_format.dart';
import 'package:warcrafty/src/definition/common/locale_fields.dart';

/// WorldStateUI 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
final worldStateUI = DbcStructureDefinition(
  name: 'WorldStateUI',
  format: 'niiisssssssssssssssssssssssssssssssssssiisssssssssssssssssssiii',
  fields: [
    const FieldDefinition(index: 0, name: 'ID', description: 'ID', format: DbcFieldFormat.indexField),
    const FieldDefinition(index: 1, name: 'MapID', description: 'MapID', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 2, name: 'AreaID', description: 'AreaID', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 3, name: 'PhaseShift', description: 'PhaseShift', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 4, name: 'Icon', description: 'Icon', format: DbcFieldFormat.string),
    ...createLocaleFieldsWithFlag(5, 'String_lang', 'String_lang'),
    ...createLocaleFieldsWithFlag(22, 'Tooltip_lang', 'Tooltip_lang'),
    const FieldDefinition(index: 39, name: 'StateVariable', description: 'StateVariable', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 40, name: 'Type', description: 'Type', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 41, name: 'DynamicIcon', description: 'DynamicIcon', format: DbcFieldFormat.string),
    ...createLocaleFieldsWithFlag(42, 'DynamicTooltip_lang', 'DynamicTooltip_lang'),
    const FieldDefinition(index: 59, name: 'ExtendedUI', description: 'ExtendedUI', format: DbcFieldFormat.string),
    const FieldDefinition(index: 60, name: 'ExtendedUIStateVariable0', description: 'ExtendedUIStateVariable 0', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 61, name: 'ExtendedUIStateVariable1', description: 'ExtendedUIStateVariable 1', format: DbcFieldFormat.intType),
    const FieldDefinition(index: 62, name: 'ExtendedUIStateVariable2', description: 'ExtendedUIStateVariable 2', format: DbcFieldFormat.intType),
  ],
);
