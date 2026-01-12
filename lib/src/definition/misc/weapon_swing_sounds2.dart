import 'package:warcrafty/src/definition/base/field_definition.dart';
import 'package:warcrafty/src/definition/base/structure_definition.dart';
import 'package:warcrafty/src/core/field_format.dart';

/// WeaponSwingSounds2 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
const weaponSwingSounds2 = DbcStructureDefinition(
  name: 'WeaponSwingSounds2',
  format: 'niii',
  fields: [
    FieldDefinition(index: 0, name: 'ID', description: 'ID', format: DbcFieldFormat.indexField),
    FieldDefinition(index: 1, name: 'SwingType', description: 'SwingType', format: DbcFieldFormat.intType),
    FieldDefinition(index: 2, name: 'Crit', description: 'Crit', format: DbcFieldFormat.intType),
    FieldDefinition(index: 3, name: 'SoundID', description: 'SoundID', format: DbcFieldFormat.intType),
  ],
);
