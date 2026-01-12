import 'package:warcrafty/src/definition/base/field_definition.dart';
import 'package:warcrafty/src/definition/base/structure_definition.dart';
import 'package:warcrafty/src/core/field_format.dart';

/// CreatureDisplayInfo 格式字符串

/// CreatureDisplayInfo 结构定义
const creatureDisplayInfo = DbcStructureDefinition(
  name: 'CreatureDisplayInfo',
  format: 'nixifxxxxxxxxxxx',
  fields: [
    FieldDefinition(index: 0, name: 'DisplayID', description: '显示 ID', format: DbcFieldFormat.intType),
    FieldDefinition(index: 1, name: 'ModelID', description: '模型 ID', format: DbcFieldFormat.intType),
    FieldDefinition(index: 2, name: 'Unused2', description: '未使用', format: DbcFieldFormat.na),
    FieldDefinition(index: 3, name: 'ExtendedDisplayInfoID', description: '扩展显示信息 ID', format: DbcFieldFormat.intType),
    FieldDefinition(index: 4, name: 'Scale', description: '缩放', format: DbcFieldFormat.float),
  ],
);
