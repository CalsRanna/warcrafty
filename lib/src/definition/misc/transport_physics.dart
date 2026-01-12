import 'package:warcrafty/src/definition/base/field_definition.dart';
import 'package:warcrafty/src/definition/base/structure_definition.dart';
import 'package:warcrafty/src/core/field_format.dart';

/// TransportPhysics 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
const transportPhysics = DbcStructureDefinition(
  name: 'TransportPhysics',
  format: 'nffffffffff',
  fields: [
    FieldDefinition(index: 0, name: 'ID', description: 'ID', format: DbcFieldFormat.indexField),
    FieldDefinition(index: 1, name: 'WaveAmp', description: 'WaveAmp', format: DbcFieldFormat.float),
    FieldDefinition(index: 2, name: 'WaveTimeScale', description: 'WaveTimeScale', format: DbcFieldFormat.float),
    FieldDefinition(index: 3, name: 'RollAmp', description: 'RollAmp', format: DbcFieldFormat.float),
    FieldDefinition(index: 4, name: 'RollTimeScale', description: 'RollTimeScale', format: DbcFieldFormat.float),
    FieldDefinition(index: 5, name: 'PitchAmp', description: 'PitchAmp', format: DbcFieldFormat.float),
    FieldDefinition(index: 6, name: 'PitchTimeScale', description: 'PitchTimeScale', format: DbcFieldFormat.float),
    FieldDefinition(index: 7, name: 'MaxBank', description: 'MaxBank', format: DbcFieldFormat.float),
    FieldDefinition(index: 8, name: 'MaxBankTurnSpeed', description: 'MaxBankTurnSpeed', format: DbcFieldFormat.float),
    FieldDefinition(index: 9, name: 'SpeedDampThresh', description: 'SpeedDampThresh', format: DbcFieldFormat.float),
    FieldDefinition(index: 10, name: 'SpeedDamp', description: 'SpeedDamp', format: DbcFieldFormat.float),
  ],
);
