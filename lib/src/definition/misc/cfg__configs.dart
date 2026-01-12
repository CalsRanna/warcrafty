import 'package:warcrafty/src/core/field_definition.dart';
import 'package:warcrafty/src/core/structure_definition.dart';
import 'package:warcrafty/src/core/field_format.dart';

/// Cfg_Configs 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
const cfgConfigs = DbcStructureDefinition(
  name: 'Cfg_Configs',
  format: 'niii',
  fields: [
    FieldDefinition(index: 0, name: 'ID', description: 'ID', format: DbcFieldFormat.indexField),
    FieldDefinition(index: 1, name: 'RealmType', description: 'RealmType', format: DbcFieldFormat.intType),
    FieldDefinition(index: 2, name: 'PlayerKillingAllowed', description: 'PlayerKillingAllowed', format: DbcFieldFormat.intType),
    FieldDefinition(index: 3, name: 'Roleplaying', description: 'Roleplaying', format: DbcFieldFormat.intType),
  ],
);
