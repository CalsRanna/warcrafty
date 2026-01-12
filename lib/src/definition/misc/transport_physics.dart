import 'package:warcrafty/src/schema/field.dart';
import 'package:warcrafty/src/schema/schema.dart';

/// TransportPhysics 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
const transportPhysics = DbcSchema(
  name: 'TransportPhysics',
  format: 'nffffffffff',
  fields: [
    Field(index: 0, name: 'ID', description: 'ID', type: FieldType.id),
    Field(index: 1, name: 'WaveAmp', description: 'WaveAmp', type: FieldType.float),
    Field(index: 2, name: 'WaveTimeScale', description: 'WaveTimeScale', type: FieldType.float),
    Field(index: 3, name: 'RollAmp', description: 'RollAmp', type: FieldType.float),
    Field(index: 4, name: 'RollTimeScale', description: 'RollTimeScale', type: FieldType.float),
    Field(index: 5, name: 'PitchAmp', description: 'PitchAmp', type: FieldType.float),
    Field(index: 6, name: 'PitchTimeScale', description: 'PitchTimeScale', type: FieldType.float),
    Field(index: 7, name: 'MaxBank', description: 'MaxBank', type: FieldType.float),
    Field(index: 8, name: 'MaxBankTurnSpeed', description: 'MaxBankTurnSpeed', type: FieldType.float),
    Field(index: 9, name: 'SpeedDampThresh', description: 'SpeedDampThresh', type: FieldType.float),
    Field(index: 10, name: 'SpeedDamp', description: 'SpeedDamp', type: FieldType.float),
  ],
);
