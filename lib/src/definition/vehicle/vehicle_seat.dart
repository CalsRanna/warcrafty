import 'package:warcrafty/src/definition/base/field_definition.dart';
import 'package:warcrafty/src/definition/base/structure_definition.dart';
import 'package:warcrafty/src/core/field_format.dart';

/// VehicleSeat 格式字符串

/// VehicleSeat 结构定义
const vehicleSeat = DbcStructureDefinition(
  name: 'VehicleSeat',
  format: 'niiffffffffffiiiiiifffffffiiifffiiiiiiiffiiiiixxxxxxxxxxxx',
  fields: [
    FieldDefinition(index: 0, name: 'ID', description: 'ID', format: DbcFieldFormat.intType),
    FieldDefinition(index: 1, name: 'VehicleID', description: '载具 ID', format: DbcFieldFormat.intType),
    FieldDefinition(index: 2, name: 'SeatIndex', description: '座椅索引', format: DbcFieldFormat.intType),
    FieldDefinition(index: 3, name: 'SeatPOVOverride', description: '座椅视角覆盖', format: DbcFieldFormat.float),
    FieldDefinition(index: 4, name: 'SeatPOVOverrideOffsetX', description: '座椅视角 X 偏移', format: DbcFieldFormat.float),
    FieldDefinition(index: 5, name: 'SeatPOVOverrideOffsetY', description: '座椅视角 Y 偏移', format: DbcFieldFormat.float),
    FieldDefinition(index: 6, name: 'SeatPOVOverrideOffsetZ', description: '座椅视角 Z 偏移', format: DbcFieldFormat.float),
    FieldDefinition(index: 7, name: 'Unknown1', description: '未知1', format: DbcFieldFormat.float),
    FieldDefinition(index: 8, name: 'Unknown2', description: '未知2', format: DbcFieldFormat.float),
    FieldDefinition(index: 9, name: 'Unknown3', description: '未知3', format: DbcFieldFormat.float),
    FieldDefinition(index: 10, name: 'Unknown4', description: '未知4', format: DbcFieldFormat.float),
    FieldDefinition(index: 11, name: 'Unknown5', description: '未知5', format: DbcFieldFormat.float),
    FieldDefinition(index: 12, name: 'Unknown6', description: '未知6', format: DbcFieldFormat.float),
    FieldDefinition(index: 13, name: 'Unknown7', description: '未知7', format: DbcFieldFormat.float),
    FieldDefinition(index: 14, name: 'Unknown8', description: '未知8', format: DbcFieldFormat.float),
    FieldDefinition(index: 15, name: 'Unknown9', description: '未知9', format: DbcFieldFormat.float),
    FieldDefinition(index: 16, name: 'Unknown10', description: '未知10', format: DbcFieldFormat.float),
    FieldDefinition(index: 17, name: 'Unknown11', description: '未知11', format: DbcFieldFormat.intType),
    FieldDefinition(index: 18, name: 'Unknown12', description: '未知12', format: DbcFieldFormat.intType),
    FieldDefinition(index: 19, name: 'Unknown13', description: '未知13', format: DbcFieldFormat.intType),
    FieldDefinition(index: 20, name: 'Unknown14', description: '未知14', format: DbcFieldFormat.intType),
    FieldDefinition(index: 21, name: 'Unknown15', description: '未知15', format: DbcFieldFormat.intType),
    FieldDefinition(index: 22, name: 'Unknown16', description: '未知16', format: DbcFieldFormat.intType),
    FieldDefinition(index: 23, name: 'Unknown17', description: '未知17', format: DbcFieldFormat.float),
    FieldDefinition(index: 24, name: 'Unknown18', description: '未知18', format: DbcFieldFormat.float),
    FieldDefinition(index: 25, name: 'Unknown19', description: '未知19', format: DbcFieldFormat.float),
    FieldDefinition(index: 26, name: 'Unknown20', description: '未知20', format: DbcFieldFormat.float),
    FieldDefinition(index: 27, name: 'Unknown21', description: '未知21', format: DbcFieldFormat.float),
    FieldDefinition(index: 28, name: 'Unknown22', description: '未知22', format: DbcFieldFormat.float),
    FieldDefinition(index: 29, name: 'Unknown23', description: '未知23', format: DbcFieldFormat.float),
    FieldDefinition(index: 30, name: 'Unknown24', description: '未知24', format: DbcFieldFormat.intType),
    FieldDefinition(index: 31, name: 'Unknown25', description: '未知25', format: DbcFieldFormat.intType),
    FieldDefinition(index: 32, name: 'Unknown26', description: '未知26', format: DbcFieldFormat.intType),
    FieldDefinition(index: 33, name: 'Unknown27', description: '未知27', format: DbcFieldFormat.intType),
    FieldDefinition(index: 34, name: 'Unknown28', description: '未知28', format: DbcFieldFormat.intType),
    FieldDefinition(index: 35, name: 'Unknown29', description: '未知29', format: DbcFieldFormat.na),
  ],
);
