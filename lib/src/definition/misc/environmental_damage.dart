import 'package:warcrafty/src/schema/field.dart';
import 'package:warcrafty/src/schema/schema.dart';

/// EnvironmentalDamage 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
const environmentalDamage = DbcSchema(
  name: 'EnvironmentalDamage',
  format: 'nii',
  fields: [
    Field(index: 0, name: 'ID', description: 'ID', type: FieldType.id),
    Field(index: 1, name: 'EnumID', description: 'EnumID', type: FieldType.int32),
    Field(index: 2, name: 'VisualkitID', description: 'VisualkitID', type: FieldType.int32),
  ],
);
