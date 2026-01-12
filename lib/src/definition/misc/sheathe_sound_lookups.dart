import 'package:warcrafty/src/schema/field.dart';
import 'package:warcrafty/src/schema/schema.dart';

/// SheatheSoundLookups 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
const sheatheSoundLookups = DbcSchema(
  name: 'SheatheSoundLookups',
  format: 'niiiiii',
  fields: [
    Field(index: 0, name: 'ID', description: 'ID', type: FieldType.id),
    Field(index: 1, name: 'ClassID', description: 'ClassID', type: FieldType.int32),
    Field(index: 2, name: 'SubclassID', description: 'SubclassID', type: FieldType.int32),
    Field(index: 3, name: 'Material', description: 'Material', type: FieldType.int32),
    Field(index: 4, name: 'CheckMaterial', description: 'CheckMaterial', type: FieldType.int32),
    Field(index: 5, name: 'SheatheSound', description: 'SheatheSound', type: FieldType.int32),
    Field(index: 6, name: 'UnsheatheSound', description: 'UnsheatheSound', type: FieldType.int32),
  ],
);
