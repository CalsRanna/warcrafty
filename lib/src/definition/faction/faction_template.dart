import 'package:warcrafty/src/schema/field.dart';
import 'package:warcrafty/src/schema/schema.dart';

/// FactionTemplate 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
const factionTemplate = DbcSchema(
  name: 'FactionTemplate',
  format: 'niiiiiiiiiiiii',
  fields: [
    Field(index: 0, name: 'ID', description: 'ID', type: FieldType.id),
    Field(index: 1, name: 'Faction', description: 'Faction', type: FieldType.int32),
    Field(index: 2, name: 'Flags', description: 'Flags', type: FieldType.int32),
    Field(index: 3, name: 'FactionGroup', description: 'FactionGroup', type: FieldType.int32),
    Field(index: 4, name: 'FriendGroup', description: 'FriendGroup', type: FieldType.int32),
    Field(index: 5, name: 'EnemyGroup', description: 'EnemyGroup', type: FieldType.int32),
    Field(index: 6, name: 'Enemies0', description: 'Enemies 0', type: FieldType.int32),
    Field(index: 7, name: 'Enemies1', description: 'Enemies 1', type: FieldType.int32),
    Field(index: 8, name: 'Enemies2', description: 'Enemies 2', type: FieldType.int32),
    Field(index: 9, name: 'Enemies3', description: 'Enemies 3', type: FieldType.int32),
    Field(index: 10, name: 'Friend0', description: 'Friend 0', type: FieldType.int32),
    Field(index: 11, name: 'Friend1', description: 'Friend 1', type: FieldType.int32),
    Field(index: 12, name: 'Friend2', description: 'Friend 2', type: FieldType.int32),
    Field(index: 13, name: 'Friend3', description: 'Friend 3', type: FieldType.int32),
  ],
);
