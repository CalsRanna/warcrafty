/// Emotes.dbc - 表情格式
library;

import '../base/field_definition.dart';
import '../base/structure_definition.dart';
import '../../core/field_format.dart';

/// Emotes 格式字符串
const String emotesFormat = 'nxxiiix';

/// Emotes 结构定义
const DbcStructureDefinition emotes = DbcStructureDefinition(
  name: 'Emotes',
  format: emotesFormat,
  fields: [
    FieldDefinition(index: 0, name: 'ID', description: '表情 ID', format: DbcFieldFormat.intType),
    FieldDefinition(index: 1, name: 'Unused1', description: '未使用', format: DbcFieldFormat.na),
    FieldDefinition(index: 2, name: 'Unused2', description: '未使用', format: DbcFieldFormat.na),
    FieldDefinition(index: 3, name: 'Flags', description: '标志', format: DbcFieldFormat.intType),
    FieldDefinition(index: 4, name: 'EmoteType', description: '表情类型', format: DbcFieldFormat.intType),
    FieldDefinition(index: 5, name: 'UnitStandState', description: '单位站立状态', format: DbcFieldFormat.intType),
  ],
);
