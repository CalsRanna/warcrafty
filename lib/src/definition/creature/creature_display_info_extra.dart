import 'package:warcrafty/src/definition/base/field_definition.dart';
import 'package:warcrafty/src/definition/base/structure_definition.dart';
import 'package:warcrafty/src/core/field_format.dart';

/// CreatureDisplayInfoExtra 格式字符串

/// CreatureDisplayInfoExtra 结构定义
const creatureDisplayInfoExtra = DbcStructureDefinition(
  name: 'CreatureDisplayInfoExtra',
  format: 'dixxxxxxxxxxxxxxxxxx',
  fields: [
    FieldDefinition(index: 0, name: 'DisplayID', description: '显示 ID', format: DbcFieldFormat.sort),
    FieldDefinition(index: 1, name: 'NPCSoundID', description: 'NPC 声音 ID', format: DbcFieldFormat.intType),
    FieldDefinition(index: 2, name: 'Race', description: '种族', format: DbcFieldFormat.na),
    FieldDefinition(index: 3, name: 'Gender', description: '性别', format: DbcFieldFormat.na),
    FieldDefinition(index: 4, name: 'SkinID', description: '皮肤 ID', format: DbcFieldFormat.na),
    FieldDefinition(index: 5, name: 'FaceID', description: '脸部 ID', format: DbcFieldFormat.na),
    FieldDefinition(index: 6, name: 'HairStyleID', description: '发型 ID', format: DbcFieldFormat.na),
    FieldDefinition(index: 7, name: 'HairColorID', description: '发色 ID', format: DbcFieldFormat.na),
    FieldDefinition(index: 8, name: 'FacialHairID', description: '面部毛发 ID', format: DbcFieldFormat.na),
    FieldDefinition(index: 9, name: 'NPCItemDisplay1', description: 'NPC 物品显示 1', format: DbcFieldFormat.na),
    FieldDefinition(index: 10, name: 'NPCItemDisplay2', description: 'NPC 物品显示 2', format: DbcFieldFormat.na),
    FieldDefinition(index: 11, name: 'NPCItemDisplay3', description: 'NPC 物品显示 3', format: DbcFieldFormat.na),
  ],
);
