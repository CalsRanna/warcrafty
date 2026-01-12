import 'package:warcrafty/src/schema/field.dart';
import 'package:warcrafty/src/schema/schema.dart';

/// LoadingScreenTaxiSplines 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
const loadingScreenTaxiSplines = DbcSchema(
  name: 'LoadingScreenTaxiSplines',
  format: 'niffffffffffffffffi',
  fields: [
    Field(index: 0, name: 'ID', description: 'ID', type: FieldType.id),
    Field(index: 1, name: 'PathID', description: 'PathID', type: FieldType.int32),
    Field(index: 2, name: 'Locx0', description: 'Locx 0', type: FieldType.float),
    Field(index: 3, name: 'Locx1', description: 'Locx 1', type: FieldType.float),
    Field(index: 4, name: 'Locx2', description: 'Locx 2', type: FieldType.float),
    Field(index: 5, name: 'Locx3', description: 'Locx 3', type: FieldType.float),
    Field(index: 6, name: 'Locx4', description: 'Locx 4', type: FieldType.float),
    Field(index: 7, name: 'Locx5', description: 'Locx 5', type: FieldType.float),
    Field(index: 8, name: 'Locx6', description: 'Locx 6', type: FieldType.float),
    Field(index: 9, name: 'Locx7', description: 'Locx 7', type: FieldType.float),
    Field(index: 10, name: 'Locy0', description: 'Locy 0', type: FieldType.float),
    Field(index: 11, name: 'Locy1', description: 'Locy 1', type: FieldType.float),
    Field(index: 12, name: 'Locy2', description: 'Locy 2', type: FieldType.float),
    Field(index: 13, name: 'Locy3', description: 'Locy 3', type: FieldType.float),
    Field(index: 14, name: 'Locy4', description: 'Locy 4', type: FieldType.float),
    Field(index: 15, name: 'Locy5', description: 'Locy 5', type: FieldType.float),
    Field(index: 16, name: 'Locy6', description: 'Locy 6', type: FieldType.float),
    Field(index: 17, name: 'Locy7', description: 'Locy 7', type: FieldType.float),
    Field(index: 18, name: 'LegIndex', description: 'LegIndex', type: FieldType.int32),
  ],
);
