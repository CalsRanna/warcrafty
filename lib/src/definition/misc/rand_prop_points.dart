import 'package:warcrafty/src/schema/field.dart';
import 'package:warcrafty/src/schema/schema.dart';

/// RandPropPoints 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
const randPropPoints = DbcSchema(
  name: 'RandPropPoints',
  format: 'niiiiiiiiiiiiiii',
  fields: [
    Field(index: 0, name: 'ID', description: 'ID', type: FieldType.id),
    Field(index: 1, name: 'Epic0', description: 'Epic 0', type: FieldType.int32),
    Field(index: 2, name: 'Epic1', description: 'Epic 1', type: FieldType.int32),
    Field(index: 3, name: 'Epic2', description: 'Epic 2', type: FieldType.int32),
    Field(index: 4, name: 'Epic3', description: 'Epic 3', type: FieldType.int32),
    Field(index: 5, name: 'Epic4', description: 'Epic 4', type: FieldType.int32),
    Field(index: 6, name: 'Superior0', description: 'Superior 0', type: FieldType.int32),
    Field(index: 7, name: 'Superior1', description: 'Superior 1', type: FieldType.int32),
    Field(index: 8, name: 'Superior2', description: 'Superior 2', type: FieldType.int32),
    Field(index: 9, name: 'Superior3', description: 'Superior 3', type: FieldType.int32),
    Field(index: 10, name: 'Superior4', description: 'Superior 4', type: FieldType.int32),
    Field(index: 11, name: 'Good0', description: 'Good 0', type: FieldType.int32),
    Field(index: 12, name: 'Good1', description: 'Good 1', type: FieldType.int32),
    Field(index: 13, name: 'Good2', description: 'Good 2', type: FieldType.int32),
    Field(index: 14, name: 'Good3', description: 'Good 3', type: FieldType.int32),
    Field(index: 15, name: 'Good4', description: 'Good 4', type: FieldType.int32),
  ],
);
