import 'package:warcrafty/src/internal/field.dart';
import 'package:warcrafty/src/internal/schema.dart';

/// ObjectEffectModifier 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
const objectEffectModifier = DbcSchema(
  name: 'ObjectEffectModifier',
  format: 'niiiffff',
  fields: [
    Field(index: 0, name: 'ID', description: 'ID', type: FieldType.id),
    Field(index: 1, name: 'InputType', description: 'InputType', type: FieldType.int32),
    Field(index: 2, name: 'MapType', description: 'MapType', type: FieldType.int32),
    Field(index: 3, name: 'OutputType', description: 'OutputType', type: FieldType.int32),
    Field(index: 4, name: 'Param0', description: 'Param 0', type: FieldType.float),
    Field(index: 5, name: 'Param1', description: 'Param 1', type: FieldType.float),
    Field(index: 6, name: 'Param2', description: 'Param 2', type: FieldType.float),
    Field(index: 7, name: 'Param3', description: 'Param 3', type: FieldType.float),
  ],
);
