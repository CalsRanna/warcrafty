import 'package:warcrafty/src/schema/field.dart';
import 'package:warcrafty/src/schema/schema.dart';

/// UnitBlood 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
const unitBlood = DbcSchema(
  name: 'UnitBlood',
  format: 'niiiisssss',
  fields: [
    Field(index: 0, name: 'ID', description: 'ID', type: FieldType.id),
    Field(index: 1, name: 'CombatBloodSpurtFront0', description: 'CombatBloodSpurtFront 0', type: FieldType.int32),
    Field(index: 2, name: 'CombatBloodSpurtFront1', description: 'CombatBloodSpurtFront 1', type: FieldType.int32),
    Field(index: 3, name: 'CombatBloodSpurtBack0', description: 'CombatBloodSpurtBack 0', type: FieldType.int32),
    Field(index: 4, name: 'CombatBloodSpurtBack1', description: 'CombatBloodSpurtBack 1', type: FieldType.int32),
    Field(index: 5, name: 'GroundBlood0', description: 'GroundBlood 0', type: FieldType.string),
    Field(index: 6, name: 'GroundBlood1', description: 'GroundBlood 1', type: FieldType.string),
    Field(index: 7, name: 'GroundBlood2', description: 'GroundBlood 2', type: FieldType.string),
    Field(index: 8, name: 'GroundBlood3', description: 'GroundBlood 3', type: FieldType.string),
    Field(index: 9, name: 'GroundBlood4', description: 'GroundBlood 4', type: FieldType.string),
  ],
);
