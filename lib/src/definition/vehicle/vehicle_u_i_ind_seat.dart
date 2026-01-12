import 'package:warcrafty/src/core/field_definition.dart';
import 'package:warcrafty/src/core/structure_definition.dart';
import 'package:warcrafty/src/core/field_format.dart';

/// VehicleUIIndSeat 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
const vehicleUIIndSeat = DbcStructureDefinition(
  name: 'VehicleUIIndSeat',
  format: 'niiff',
  fields: [
    FieldDefinition(index: 0, name: 'ID', description: 'ID', format: DbcFieldFormat.indexField),
    FieldDefinition(index: 1, name: 'VehicleUIIndicatorID', description: 'VehicleUIIndicatorID', format: DbcFieldFormat.intType),
    FieldDefinition(index: 2, name: 'VirtualSeatIndex', description: 'VirtualSeatIndex', format: DbcFieldFormat.intType),
    FieldDefinition(index: 3, name: 'XPos', description: 'XPos', format: DbcFieldFormat.float),
    FieldDefinition(index: 4, name: 'YPos', description: 'YPos', format: DbcFieldFormat.float),
  ],
);
