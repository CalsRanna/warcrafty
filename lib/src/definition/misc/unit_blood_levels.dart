import 'package:warcrafty/src/schema/field.dart';
import 'package:warcrafty/src/schema/schema.dart';

/// UnitBloodLevels 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
const unitBloodLevels = DbcSchema(
  name: 'UnitBloodLevels',
  format: 'niii',
  fields: [
    Field(index: 0, name: 'ID', description: 'ID', type: FieldType.id),
    Field(index: 1, name: 'Violencelevel0', description: 'Violencelevel 0', type: FieldType.int32),
    Field(index: 2, name: 'Violencelevel1', description: 'Violencelevel 1', type: FieldType.int32),
    Field(index: 3, name: 'Violencelevel2', description: 'Violencelevel 2', type: FieldType.int32),
  ],
);
