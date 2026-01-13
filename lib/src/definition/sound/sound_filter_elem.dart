import 'package:warcrafty/src/internal/field.dart';
import 'package:warcrafty/src/internal/schema.dart';

/// SoundFilterElem 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
const soundFilterElem = DbcSchema(
  name: 'SoundFilterElem',
  format: 'niiifffffffff',
  fields: [
    Field(index: 0, name: 'ID', description: 'ID', type: FieldType.id),
    Field(index: 1, name: 'SoundFilterID', description: 'SoundFilterID', type: FieldType.int32),
    Field(index: 2, name: 'OrderIndex', description: 'OrderIndex', type: FieldType.int32),
    Field(index: 3, name: 'FilterType', description: 'FilterType', type: FieldType.int32),
    Field(index: 4, name: 'Params0', description: 'Params 0', type: FieldType.float),
    Field(index: 5, name: 'Params1', description: 'Params 1', type: FieldType.float),
    Field(index: 6, name: 'Params2', description: 'Params 2', type: FieldType.float),
    Field(index: 7, name: 'Params3', description: 'Params 3', type: FieldType.float),
    Field(index: 8, name: 'Params4', description: 'Params 4', type: FieldType.float),
    Field(index: 9, name: 'Params5', description: 'Params 5', type: FieldType.float),
    Field(index: 10, name: 'Params6', description: 'Params 6', type: FieldType.float),
    Field(index: 11, name: 'Params7', description: 'Params 7', type: FieldType.float),
    Field(index: 12, name: 'Params8', description: 'Params 8', type: FieldType.float),
  ],
);
