import 'package:warcrafty/src/schema/field.dart';
import 'package:warcrafty/src/schema/schema.dart';

/// HelmetGeosetVisData 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
const helmetGeosetVisData = DbcSchema(
  name: 'HelmetGeosetVisData',
  format: 'niiiiiii',
  fields: [
    Field(index: 0, name: 'ID', description: 'ID', type: FieldType.id),
    Field(index: 1, name: 'HideGeoset0', description: 'HideGeoset 0', type: FieldType.int32),
    Field(index: 2, name: 'HideGeoset1', description: 'HideGeoset 1', type: FieldType.int32),
    Field(index: 3, name: 'HideGeoset2', description: 'HideGeoset 2', type: FieldType.int32),
    Field(index: 4, name: 'HideGeoset3', description: 'HideGeoset 3', type: FieldType.int32),
    Field(index: 5, name: 'HideGeoset4', description: 'HideGeoset 4', type: FieldType.int32),
    Field(index: 6, name: 'HideGeoset5', description: 'HideGeoset 5', type: FieldType.int32),
    Field(index: 7, name: 'HideGeoset6', description: 'HideGeoset 6', type: FieldType.int32),
  ],
);
