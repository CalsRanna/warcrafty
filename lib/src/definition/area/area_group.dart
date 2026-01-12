import 'package:warcrafty/src/schema/field.dart';
import 'package:warcrafty/src/schema/schema.dart';

/// AreaGroup 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
const areaGroup = DbcSchema(
  name: 'AreaGroup',
  format: 'niiiiiii',
  fields: [
    Field(index: 0, name: 'ID', description: 'ID', type: FieldType.id),
    Field(index: 1, name: 'AreaID0', description: 'AreaID 0', type: FieldType.int32),
    Field(index: 2, name: 'AreaID1', description: 'AreaID 1', type: FieldType.int32),
    Field(index: 3, name: 'AreaID2', description: 'AreaID 2', type: FieldType.int32),
    Field(index: 4, name: 'AreaID3', description: 'AreaID 3', type: FieldType.int32),
    Field(index: 5, name: 'AreaID4', description: 'AreaID 4', type: FieldType.int32),
    Field(index: 6, name: 'AreaID5', description: 'AreaID 5', type: FieldType.int32),
    Field(index: 7, name: 'NextAreaID', description: 'NextAreaID', type: FieldType.int32),
  ],
);
