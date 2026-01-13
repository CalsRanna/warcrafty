import 'package:warcrafty/src/internal/field.dart';
import 'package:warcrafty/src/internal/schema.dart';

/// ItemVisuals 结构定义
///
/// 基于 WoWDBDefs 定义，版本 3.3.5.12340
const itemVisuals = DbcSchema(
  name: 'ItemVisuals',
  format: 'niiiii',
  fields: [
    Field(index: 0, name: 'ID', description: 'ID', type: FieldType.id),
    Field(index: 1, name: 'Slot0', description: 'Slot 0', type: FieldType.int32),
    Field(index: 2, name: 'Slot1', description: 'Slot 1', type: FieldType.int32),
    Field(index: 3, name: 'Slot2', description: 'Slot 2', type: FieldType.int32),
    Field(index: 4, name: 'Slot3', description: 'Slot 3', type: FieldType.int32),
    Field(index: 5, name: 'Slot4', description: 'Slot 4', type: FieldType.int32),
  ],
);
