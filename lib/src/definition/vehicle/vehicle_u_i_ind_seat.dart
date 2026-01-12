import 'package:warcrafty/src/schema/field.dart';
import 'package:warcrafty/src/schema/schema.dart';

/// VehicleUIIndSeat 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
const vehicleUIIndSeat = DbcSchema(
  name: 'VehicleUIIndSeat',
  format: 'niiff',
  fields: [
    Field(index: 0, name: 'ID', description: 'ID', type: FieldType.id),
    Field(index: 1, name: 'VehicleUIIndicatorID', description: 'VehicleUIIndicatorID', type: FieldType.int32),
    Field(index: 2, name: 'VirtualSeatIndex', description: 'VirtualSeatIndex', type: FieldType.int32),
    Field(index: 3, name: 'XPos', description: 'XPos', type: FieldType.float),
    Field(index: 4, name: 'YPos', description: 'YPos', type: FieldType.float),
  ],
);
