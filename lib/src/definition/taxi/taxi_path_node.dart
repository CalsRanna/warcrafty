import 'package:warcrafty/src/schema/field.dart';
import 'package:warcrafty/src/schema/schema.dart';

/// TaxiPathNode 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
const taxiPathNode = DbcSchema(
  name: 'TaxiPathNode',
  format: 'niiifffiiii',
  fields: [
    Field(index: 0, name: 'ID', description: 'ID', type: FieldType.id),
    Field(index: 1, name: 'PathID', description: 'PathID', type: FieldType.int32),
    Field(index: 2, name: 'NodeIndex', description: 'NodeIndex', type: FieldType.int32),
    Field(index: 3, name: 'ContinentID', description: 'ContinentID', type: FieldType.int32),
    Field(index: 4, name: 'Loc0', description: 'Loc 0', type: FieldType.float),
    Field(index: 5, name: 'Loc1', description: 'Loc 1', type: FieldType.float),
    Field(index: 6, name: 'Loc2', description: 'Loc 2', type: FieldType.float),
    Field(index: 7, name: 'Flags', description: 'Flags', type: FieldType.int32),
    Field(index: 8, name: 'Delay', description: 'Delay', type: FieldType.int32),
    Field(index: 9, name: 'ArrivalEventID', description: 'ArrivalEventID', type: FieldType.int32),
    Field(index: 10, name: 'DepartureEventID', description: 'DepartureEventID', type: FieldType.int32),
  ],
);
