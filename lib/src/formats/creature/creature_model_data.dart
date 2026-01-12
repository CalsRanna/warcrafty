/// CreatureModelData.dbc - 生物模型数据格式
library;

import '../base/field_definition.dart';
import '../base/structure_definition.dart';
import '../../core/field_format.dart';

/// CreatureModelData 格式字符串
const String creatureModelDataFormat = 'nixxfxxxxxxxxxfffxxxxxxxxxxx';

/// CreatureModelData 结构定义
const DbcStructureDefinition creatureModelData = DbcStructureDefinition(
  name: 'CreatureModelData',
  format: creatureModelDataFormat,
  fields: [
    FieldDefinition(index: 0, name: 'ID', description: '模型 ID', format: DbcFieldFormat.intType),
    FieldDefinition(index: 1, name: 'Flags', description: '标志', format: DbcFieldFormat.intType),
    FieldDefinition(index: 2, name: 'FileName', description: '文件名', format: DbcFieldFormat.string),
    FieldDefinition(index: 3, name: 'SizeClass', description: '大小类', format: DbcFieldFormat.intType),
    FieldDefinition(index: 4, name: 'ModelScale', description: '模型缩放', format: DbcFieldFormat.float),
    FieldDefinition(index: 5, name: 'ImpactSoundID', description: '撞击声音 ID', format: DbcFieldFormat.na),
    FieldDefinition(index: 6, name: 'TrailSoundID', description: '拖尾声音 ID', format: DbcFieldFormat.na),
    FieldDefinition(index: 7, name: 'Elite', description: '精英', format: DbcFieldFormat.na),
    FieldDefinition(index: 8, name: 'Scale', description: '缩放', format: DbcFieldFormat.float),
    FieldDefinition(index: 9, name: 'RenderTextureID', description: '渲染纹理 ID', format: DbcFieldFormat.na),
    FieldDefinition(index: 10, name: 'BloodID', description: '血液 ID', format: DbcFieldFormat.na),
    FieldDefinition(index: 11, name: 'CollisionWidth', description: '碰撞宽度', format: DbcFieldFormat.float),
    FieldDefinition(index: 12, name: 'CollisionHeight', description: '碰撞高度', format: DbcFieldFormat.float),
    FieldDefinition(index: 13, name: 'MountHeight', description: '坐骑高度', format: DbcFieldFormat.float),
  ],
);
