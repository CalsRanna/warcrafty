import 'package:warcrafty/src/internal/field.dart';
import 'package:warcrafty/src/internal/schema.dart';

/// LightIntBand 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
const lightIntBand = DbcSchema(
  name: 'LightIntBand',
  format: 'niiiiiiiiiiiiiiiiiiiiiiiiiiiiiiiii',
  fields: [
    Field(index: 0, name: 'ID', description: 'ID', type: FieldType.id),
    Field(index: 1, name: 'Num', description: 'Num', type: FieldType.int32),
    Field(index: 2, name: 'Time0', description: 'Time 0', type: FieldType.int32),
    Field(index: 3, name: 'Time1', description: 'Time 1', type: FieldType.int32),
    Field(index: 4, name: 'Time2', description: 'Time 2', type: FieldType.int32),
    Field(index: 5, name: 'Time3', description: 'Time 3', type: FieldType.int32),
    Field(index: 6, name: 'Time4', description: 'Time 4', type: FieldType.int32),
    Field(index: 7, name: 'Time5', description: 'Time 5', type: FieldType.int32),
    Field(index: 8, name: 'Time6', description: 'Time 6', type: FieldType.int32),
    Field(index: 9, name: 'Time7', description: 'Time 7', type: FieldType.int32),
    Field(index: 10, name: 'Time8', description: 'Time 8', type: FieldType.int32),
    Field(index: 11, name: 'Time9', description: 'Time 9', type: FieldType.int32),
    Field(index: 12, name: 'Time10', description: 'Time 10', type: FieldType.int32),
    Field(index: 13, name: 'Time11', description: 'Time 11', type: FieldType.int32),
    Field(index: 14, name: 'Time12', description: 'Time 12', type: FieldType.int32),
    Field(index: 15, name: 'Time13', description: 'Time 13', type: FieldType.int32),
    Field(index: 16, name: 'Time14', description: 'Time 14', type: FieldType.int32),
    Field(index: 17, name: 'Time15', description: 'Time 15', type: FieldType.int32),
    Field(index: 18, name: 'Data0', description: 'Data 0', type: FieldType.int32),
    Field(index: 19, name: 'Data1', description: 'Data 1', type: FieldType.int32),
    Field(index: 20, name: 'Data2', description: 'Data 2', type: FieldType.int32),
    Field(index: 21, name: 'Data3', description: 'Data 3', type: FieldType.int32),
    Field(index: 22, name: 'Data4', description: 'Data 4', type: FieldType.int32),
    Field(index: 23, name: 'Data5', description: 'Data 5', type: FieldType.int32),
    Field(index: 24, name: 'Data6', description: 'Data 6', type: FieldType.int32),
    Field(index: 25, name: 'Data7', description: 'Data 7', type: FieldType.int32),
    Field(index: 26, name: 'Data8', description: 'Data 8', type: FieldType.int32),
    Field(index: 27, name: 'Data9', description: 'Data 9', type: FieldType.int32),
    Field(index: 28, name: 'Data10', description: 'Data 10', type: FieldType.int32),
    Field(index: 29, name: 'Data11', description: 'Data 11', type: FieldType.int32),
    Field(index: 30, name: 'Data12', description: 'Data 12', type: FieldType.int32),
    Field(index: 31, name: 'Data13', description: 'Data 13', type: FieldType.int32),
    Field(index: 32, name: 'Data14', description: 'Data 14', type: FieldType.int32),
    Field(index: 33, name: 'Data15', description: 'Data 15', type: FieldType.int32),
  ],
);
