/// CreatureDisplayInfo.dbc - 生物显示信息格式
library;

import '../base/field_definition.dart';
import '../base/structure_definition.dart';
import '../../core/field_format.dart';

/// CreatureDisplayInfo 格式字符串
const String creatureDisplayInfoFormat = 'nixifxxxxxxxxxxx';

/// CreatureDisplayInfo 结构定义
const DbcStructureDefinition creatureDisplayInfo = DbcStructureDefinition(
  name: 'CreatureDisplayInfo',
  format: creatureDisplayInfoFormat,
  fields: [
    FieldDefinition(index: 0, name: 'DisplayID', description: '显示 ID', format: DbcFieldFormat.intType),
    FieldDefinition(index: 1, name: 'ModelID', description: '模型 ID', format: DbcFieldFormat.intType),
    FieldDefinition(index: 2, name: 'Unused2', description: '未使用', format: DbcFieldFormat.na),
    FieldDefinition(index: 3, name: 'ExtendedDisplayInfoID', description: '扩展显示信息 ID', format: DbcFieldFormat.intType),
    FieldDefinition(index: 4, name: 'Scale', description: '缩放', format: DbcFieldFormat.float),
  ],
);
