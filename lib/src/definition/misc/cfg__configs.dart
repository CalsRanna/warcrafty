import 'package:warcrafty/src/schema/field.dart';
import 'package:warcrafty/src/schema/schema.dart';

/// Cfg_Configs 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
const cfgConfigs = DbcSchema(
  name: 'Cfg_Configs',
  format: 'niii',
  fields: [
    Field(index: 0, name: 'ID', description: 'ID', type: FieldType.id),
    Field(index: 1, name: 'RealmType', description: 'RealmType', type: FieldType.int32),
    Field(index: 2, name: 'PlayerKillingAllowed', description: 'PlayerKillingAllowed', type: FieldType.int32),
    Field(index: 3, name: 'Roleplaying', description: 'Roleplaying', type: FieldType.int32),
  ],
);
